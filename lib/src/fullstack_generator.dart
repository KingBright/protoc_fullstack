// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '../protoc.dart';

class FullstackGenerator extends ProtobufContainer {
  // a map to indicate whether a type presents a collection or not.
  // If a collection is referenced by another collection, then we weill generate a link.
  // If the referenced type is just an embedded type, then will do nothing.
  static final objectType = <String, bool>{};

  /// The name of the Dart class to generate.
  @override
  final String classname;

  /// The fully-qualified name of the message (without any leading '.').
  @override
  final String fullName;

  /// The part of the fully qualified name that comes after the package prefix.
  ///
  /// For nested messages this will include the names of the parents.
  ///
  /// For example:
  /// ```
  /// package foo;
  ///
  /// message Container {
  ///   message Nested {
  ///     int32 int32_value = 1;
  ///   }
  /// }
  /// ```
  /// The nested message will have a `fullName` of 'foo.Container.Nested', and a
  /// `messageName` of 'Container.Nested'.
  String get messageName =>
      fullName.substring(package.isEmpty ? 0 : package.length + 1);

  @override
  final ProtobufContainer? parent;

  final DescriptorProto _descriptor;
  final List<EnumGenerator> _enumGenerators = <EnumGenerator>[];
  final List<FullstackGenerator> _fullstackGenerators = <FullstackGenerator>[];
  final List<ExtensionGenerator> _extensionGenerators = <ExtensionGenerator>[];

  /// Stores the list of fields belonging to each oneof declaration identified
  /// by the index in the containing types's oneof_decl list.
  /// Only contains the 'real' oneofs.
  final List<List<ProtobufField>> _oneofFields;
  late List<OneofNames> _oneofNames;

  final List<int> _fieldPathSegment;

  /// See [[ProtobufContainer]
  @override
  late final List<int> fieldPath = List.from(parent!.fieldPath!)
    ..addAll(_fieldPathSegment);

  // populated by resolve()
  late List<ProtobufField> _fieldList;
  bool _resolved = false;

  Set<String> _usedTopLevelNames;

  FullstackGenerator._(
      DescriptorProto descriptor,
      this.parent,
      Map<String, PbMixin> declaredMixins,
      PbMixin? defaultMixin,
      this._usedTopLevelNames,
      int repeatedFieldIndex,
      int fieldIdTag)
      : _descriptor = descriptor,
        _fieldPathSegment = [fieldIdTag, repeatedFieldIndex],
        classname = messageOrEnumClassName(descriptor.name, _usedTopLevelNames,
            parent: parent?.classname ?? ''),
        assert(parent != null),
        fullName = parent!.fullName == ''
            ? descriptor.name
            : '${parent.fullName}.${descriptor.name}',
        _oneofFields =
            List.generate(countRealOneofs(descriptor), (int index) => []) {
    for (var i = 0; i < _descriptor.enumType.length; i++) {
      var e = _descriptor.enumType[i];
      _enumGenerators.add(EnumGenerator.nested(e, this, _usedTopLevelNames, i));
    }

    for (var i = 0; i < _descriptor.nestedType.length; i++) {
      var n = _descriptor.nestedType[i];
      _fullstackGenerators.add(FullstackGenerator.nested(
          n, this, declaredMixins, defaultMixin, _usedTopLevelNames, i));
    }

    // Extensions within messages won't create top-level classes and don't need
    // to check against / be added to top-level reserved names.
    final usedExtensionNames = {...forbiddenExtensionNames};
    for (var i = 0; i < _descriptor.extension.length; i++) {
      var x = _descriptor.extension[i];
      _extensionGenerators
          .add(ExtensionGenerator.nested(x, this, usedExtensionNames, i));
    }
  }

  static const _topLevelMessageTag = 4;
  static const _nestedMessageTag = 3;
  static const _messageFieldTag = 2;

  FullstackGenerator.topLevel(
      DescriptorProto descriptor,
      ProtobufContainer parent,
      Map<String, PbMixin> declaredMixins,
      PbMixin? defaultMixin,
      Set<String> usedNames,
      int repeatedFieldIndex)
      : this._(descriptor, parent, declaredMixins, defaultMixin, usedNames,
            repeatedFieldIndex, _topLevelMessageTag);

  FullstackGenerator.nested(
      DescriptorProto descriptor,
      ProtobufContainer parent,
      Map<String, PbMixin> declaredMixins,
      PbMixin? defaultMixin,
      Set<String> usedNames,
      int repeatedFieldIndex)
      : this._(descriptor, parent, declaredMixins, defaultMixin, usedNames,
            repeatedFieldIndex, _nestedMessageTag);

  @override
  String get package => parent!.package;

  /// The generator of the .pb.dart file that will declare this type.
  @override
  FileGenerator get fileGen => parent!.fileGen!;

  /// Throws an exception if [resolve] hasn't been called yet.
  void checkResolved() {
    if (!_resolved) {
      throw StateError('message not resolved: $fullName');
    }
  }

  /// Returns a const expression that evaluates to the JSON for this message.
  /// [usage] represents the .pb.dart file where the expression will be used.
  String getJsonConstant(FileGenerator usage) {
    var name = '$classname\$json';
    if (usage.protoFileUri == fileGen.protoFileUri) {
      return name;
    }
    return '$fileImportPrefix.$name';
  }

  // Registers message and enum types that can be used elsewhere.
  void register(GenerationContext ctx) {
    ctx.registerFieldType(this);

    for (var m in _fullstackGenerators) {
      m.register(ctx);
    }
    for (var e in _enumGenerators) {
      e.register(ctx);
    }
  }

  // Creates fields and resolves extension targets.
  void resolve(GenerationContext ctx) {
    if (_resolved) throw StateError('message already resolved');
    _resolved = true;

    var reserved = const <String>[];
    var members = messageMemberNames(_descriptor, classname, _usedTopLevelNames,
        reserved: reserved);

    _fieldList = <ProtobufField>[];
    for (var names in members.fieldNames) {
      var field = ProtobufField.message(names, this, ctx);
      if (field.descriptor.hasOneofIndex() &&
          !field.descriptor.proto3Optional) {
        _oneofFields[field.descriptor.oneofIndex].add(field);
      }
      _fieldList.add(field);
    }
    _oneofNames = members.oneofNames;

    for (var m in _fullstackGenerators) {
      m.resolve(ctx);
    }
    for (var x in _extensionGenerators) {
      x.resolve(ctx);
    }

    if (_hasId()) {
      objectType[classname] = true;
    } else {
      objectType[classname] = false;
    }
  }

  bool get needsFixnumImport {
    checkResolved();
    for (var field in _fieldList) {
      if (field.needsFixnumImport) return true;
    }
    for (var m in _fullstackGenerators) {
      if (m.needsFixnumImport) return true;
    }
    for (var x in _extensionGenerators) {
      if (x.needsFixnumImport) return true;
    }
    return false;
  }

  void generateForIsar(IndentingWriter out) {
    checkResolved();

    for (var m in _fullstackGenerators) {
      // Don't output the generated map entry type. Instead, the `PbMap` type
      // from the protobuf library is used to hold the keys and values.
      if (m._descriptor.options.hasMapEntry()) continue;
      m.generateForIsar(out);
    }

    for (var oneof in _oneofNames) {
      OneofEnumGenerator.generate(
          out, oneof.oneofEnumName, _oneofFields[oneof.index]);
    }

    if (_hasId()) {
      out.println('@collection');
    } else {
      out.println('@embedded');
    }

    var prefix = r'$';
    out.addAnnotatedBlock('class $prefix$classname {', '}', [
      NamedLocation(
          name: classname, fieldPathSegment: fieldPath, start: 'class '.length)
    ], () {
      out.printlnAnnotated('$prefix$classname() : super();', [
        NamedLocation(name: classname, fieldPathSegment: fieldPath, start: 0)
      ]);
      out.println();

      // normal factory
      generateFactory(out);

      // make Pb Factory
      generateProtoFactory(out);

      generateToProto(out);

      generateFields(out);
    });

    out.println();
  }

  bool _hasId() {
    for (var field in _fieldList) {
      if (field.descriptor.name == 'id') {
        return true;
      }
    }
    return false;
  }

  bool _isCollection(String classname) {
    if (objectType.containsKey(classname)) {
      return objectType[classname] ?? false;
    }
    return false;
  }

  bool _isProtoType(String classname) {
    return objectType.containsKey(classname);
  }

  void generateFactory(IndentingWriter out) {
    var prefix = r'$';
    out.print('factory $prefix$classname.create(');
    if (_fieldList.isNotEmpty) {
      out.println('{');
      for (final field in _fieldList) {
        if (field.isRepeated && !field.isMapField) {
          var baseType = field.getBaseDartType();
          out.println(
              '  Iterable<${_isProtoType(baseType) ? prefix : ''}$baseType>? ${field.memberNames!.fieldName},');
        } else {
          var fieldTypeString = field.getDartType();
          if (field.baseType.descriptor ==
              FieldDescriptorProto_Type.TYPE_INT64) {
            fieldTypeString = 'int';
          }
          out.println(
              '  ${field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_MESSAGE || field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_ENUM ? prefix : ''}$fieldTypeString? ${field.memberNames!.fieldName},');
        }
      }
      out.print('}');
    }
    if (_fieldList.isNotEmpty) {
      out.println(') {');
      out.println('  final result = $prefix$classname();');
      for (final field in _fieldList) {
        out.println('  if (${field.memberNames!.fieldName} != null) {');
        if (field.isRepeated) {
          out.println(
              '    result.${field.memberNames!.fieldName}.addAll(${field.memberNames!.fieldName});');
        } else if (field.isMapField) {
          out.println(
              '    result.${field.memberNames!.fieldName}.addAll(${field.memberNames!.fieldName});');
        } else {
          if (_isCollection(field.getDartType())) {
            out.println(
                '    result.${field.memberNames!.fieldName}.value = ${field.memberNames!.fieldName};');
          } else {
            out.println(
                '    result.${field.memberNames!.fieldName} = ${field.memberNames!.fieldName};');
          }
        }
        out.println('  }');
      }
      out.println('  return result;');
      out.println('}');
    } else {
      out.println(') => create();');
    }
    out.println();
  }

  void generateProtoFactory(IndentingWriter out) {
    if (_fieldList.isNotEmpty) {
      var prefix = r'$';
      out.print('factory $prefix$classname.fromProto($classname proto');
      out.println(') {');
      out.println('  final result = $prefix$classname();');
      for (final field in _fieldList) {
        //todo: map type not handled
        if (field.isRepeated || field.isMapField) {
          var baseType = field.baseType.getDartType(fileGen);
          out.println(
              '  result.${field.memberNames!.fieldName}.addAll(proto.${field.memberNames!.fieldName}.map((e) => ${_isProtoType(baseType) ? prefix : ''}$baseType.fromProto(e)));');
        } else if (field.baseType.descriptor ==
            FieldDescriptorProto_Type.TYPE_MESSAGE) {
          if (_isCollection(field.getDartType())) {
            out.println(
                '  result.${field.memberNames!.fieldName}.value = $prefix${field.getDartType()}.fromProto(proto.${field.memberNames!.fieldName});');
          } else {
            out.println(
                '  result.${field.memberNames!.fieldName} = $prefix${field.getDartType()}.fromProto(proto.${field.memberNames!.fieldName});');
          }
        } else if (field.baseType.descriptor ==
            FieldDescriptorProto_Type.TYPE_ENUM) {
          out.println(
              '  result.${field.memberNames!.fieldName} = ${field.getDartType()}Converter.fromProto(proto.${field.memberNames!.fieldName});');
        } else {
          if (field.baseType.descriptor ==
              FieldDescriptorProto_Type.TYPE_INT64) {
            out.println(
                '  result.${field.memberNames!.fieldName} = proto.${field.memberNames!.fieldName}.toInt();');
          } else {
            out.println(
                '  result.${field.memberNames!.fieldName} = proto.${field.memberNames!.fieldName};');
          }
        }
      }
      out.println('  return result;');
      out.println('}');
      out.println();
    }
  }

  void generateToProto(IndentingWriter out) {
    if (_fieldList.isNotEmpty) {
      out.println('$classname toProto() {');
      out.println('var proto = $classname.create()');

      var defferedFields = <ProtobufField>[];
      for (final field in _fieldList) {
        if (field.descriptor.name == 'id') {
          // ignore id field, id is always specified by the database.
          continue;
        }
        if (field.isRepeated) {
          out.println(
              '  ..${field.memberNames!.fieldName}.addAll(${field.memberNames!.fieldName}.map((e) => e.toProto()))');
        } else if (field.isMapField) {
          //todo: map type not handled
          out.println(
              '  ..${field.memberNames!.fieldName} = ${field.memberNames!.fieldName}');
        } else if (field.baseType.descriptor ==
            FieldDescriptorProto_Type.TYPE_MESSAGE) {
          if (_isCollection(field.getDartType())) {
            defferedFields.add(field);
          } else {
            out.println(
                '  ..${field.memberNames!.fieldName} = ${field.memberNames!.fieldName}.toProto()');
          }
        } else if (field.baseType.descriptor ==
            FieldDescriptorProto_Type.TYPE_ENUM) {
          out.println(
              '  ..${field.memberNames!.fieldName} = ${field.getDartType()}Converter.toProto(${field.memberNames!.fieldName})');
        } else {
          if (field.baseType.descriptor ==
              FieldDescriptorProto_Type.TYPE_INT64) {
            out.println(
                '  ..${field.memberNames!.fieldName} = Int64(${field.memberNames!.fieldName})');
          } else {
            out.println(
                '  ..${field.memberNames!.fieldName} = ${field.memberNames!.fieldName}');
          }
        }
      }

      out.println(';');

      if (defferedFields.isNotEmpty) {
        for (final field in defferedFields) {
          out.println('if (${field.memberNames!.fieldName}.value != null) {');
          out.println(
              '  proto.${field.memberNames!.fieldName} = ${field.memberNames!.fieldName}.value!.toProto();');
          out.println('}');
        }
      }

      out.println('  return proto;');
      out.println('}');
      out.println();
    }
  }

  void generateListTransform() {}

  void generateFields(IndentingWriter out) {
    for (var field in _fieldList) {
      out.println();
      if (field.descriptor.name == 'id') {
        out.println('Id? id = Isar.autoIncrement;');
      } else {
        var memberFieldPath = List<int>.from(fieldPath)
          ..addAll([_messageFieldTag, field.sourcePosition!]);
        generateField(field, out, memberFieldPath);
      }
    }
  }

  void generateField(
      ProtobufField field, IndentingWriter out, List<int> memberFieldPath) {
    var fieldTypeString = field.getDartType();

    // isar do not support Int64, so just convert Int64 to int
    if (field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_INT64) {
      fieldTypeString = 'int';
    }
    var names = field.memberNames;
    var prefix = r'$';

    if (field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_ENUM) {
      out.println('@enumerated');
    }

    if (field.isRepeated) {
      if (_isCollection(field.getBaseDartType())) {
        out.println(
            'final ${names!.fieldName} = IsarLinks<$prefix${field.getBaseDartType()}>();');
      } else {
        out.println(
            'final List<$prefix${field.getBaseDartType()}>${names!.fieldName} = [];');
      }
    } else if (field.baseType.descriptor ==
            FieldDescriptorProto_Type.TYPE_MESSAGE &&
        _isCollection(field.getDartType())) {
      out.println(
          'final ${names!.fieldName} = IsarLink<${field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_MESSAGE ? prefix : ''}$fieldTypeString>();');
    } else {
      out.printlnAnnotated(
          'late ${field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_MESSAGE || field.baseType.descriptor == FieldDescriptorProto_Type.TYPE_ENUM ? prefix : ''}$fieldTypeString ${names!.fieldName};',
          [
            NamedLocation(
                name: names.fieldName,
                fieldPathSegment: memberFieldPath,
                start: '$fieldTypeString get '.length)
          ]);
    }
  }

  void generateEnums(IndentingWriter out) {
    for (var e in _enumGenerators) {
      e.generate(out);
    }

    for (var m in _fullstackGenerators) {
      m.generateEnums(out);
    }
  }
}
