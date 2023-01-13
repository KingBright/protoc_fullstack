///
//  Generated code. Do not modify.
//  source: fs/options.proto
//
// @dart = 2.18
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'options.pbenum.dart';

export 'options.pbenum.dart';

class MethodOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MethodOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'fs'),
      createEmptyInstance: create)
    ..e<MethodOptions_Mode>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mode',
        $pb.PbFieldType.OE,
        defaultOrMaker: MethodOptions_Mode.Remote,
        valueOf: MethodOptions_Mode.valueOf,
        enumValues: MethodOptions_Mode.values)
    ..e<MethodOptions_CacheMode>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cacheMode',
        $pb.PbFieldType.OE,
        protoName: 'cacheMode',
        defaultOrMaker: MethodOptions_CacheMode.CacheFirst,
        valueOf: MethodOptions_CacheMode.valueOf,
        enumValues: MethodOptions_CacheMode.values)
    ..hasRequiredFields = false;

  MethodOptions._() : super();
  factory MethodOptions({
    MethodOptions_Mode? mode,
    MethodOptions_CacheMode? cacheMode,
  }) {
    final _result = create();
    if (mode != null) {
      _result.mode = mode;
    }
    if (cacheMode != null) {
      _result.cacheMode = cacheMode;
    }
    return _result;
  }
  factory MethodOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MethodOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MethodOptions clone() => MethodOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MethodOptions copyWith(void Function(MethodOptions) updates) =>
      super.copyWith((message) => updates(message as MethodOptions))
          as MethodOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MethodOptions create() => MethodOptions._();
  MethodOptions createEmptyInstance() => create();
  static $pb.PbList<MethodOptions> createRepeated() =>
      $pb.PbList<MethodOptions>();
  @$core.pragma('dart2js:noInline')
  static MethodOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MethodOptions>(create);
  static MethodOptions? _defaultInstance;

  @$pb.TagNumber(1)
  MethodOptions_Mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(MethodOptions_Mode v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  MethodOptions_CacheMode get cacheMode => $_getN(1);
  @$pb.TagNumber(2)
  set cacheMode(MethodOptions_CacheMode v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCacheMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCacheMode() => clearField(2);
}

class FieldExts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FieldExts',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'fs'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'desc')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'required')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unit')
    ..pPS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'example')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'validation')
    ..hasRequiredFields = false;

  FieldExts._() : super();
  factory FieldExts({
    $core.String? name,
    $core.String? desc,
    $core.bool? required,
    $core.String? unit,
    $core.Iterable<$core.String>? options,
    $core.String? example,
    $core.String? validation,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (required != null) {
      _result.required = required;
    }
    if (unit != null) {
      _result.unit = unit;
    }
    if (options != null) {
      _result.options.addAll(options);
    }
    if (example != null) {
      _result.example = example;
    }
    if (validation != null) {
      _result.validation = validation;
    }
    return _result;
  }
  factory FieldExts.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FieldExts.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FieldExts clone() => FieldExts()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FieldExts copyWith(void Function(FieldExts) updates) =>
      super.copyWith((message) => updates(message as FieldExts))
          as FieldExts; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FieldExts create() => FieldExts._();
  FieldExts createEmptyInstance() => create();
  static $pb.PbList<FieldExts> createRepeated() => $pb.PbList<FieldExts>();
  @$core.pragma('dart2js:noInline')
  static FieldExts getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldExts>(create);
  static FieldExts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);
  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get required => $_getBF(2);
  @$pb.TagNumber(3)
  set required($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRequired() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequired() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get unit => $_getSZ(3);
  @$pb.TagNumber(4)
  set unit($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnit() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get options => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get example => $_getSZ(5);
  @$pb.TagNumber(6)
  set example($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExample() => $_has(5);
  @$pb.TagNumber(6)
  void clearExample() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get validation => $_getSZ(6);
  @$pb.TagNumber(7)
  set validation($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasValidation() => $_has(6);
  @$pb.TagNumber(7)
  void clearValidation() => clearField(7);
}

class Options {
  static final options = $pb.Extension<MethodOptions>(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'google.protobuf.MethodOptions',
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'options',
      1001,
      $pb.PbFieldType.OM,
      defaultOrMaker: MethodOptions.getDefault,
      subBuilder: MethodOptions.create);
  static final ext = $pb.Extension<FieldExts>(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'google.protobuf.FieldOptions',
      const $core.bool.fromEnvironment('protobuf.omit_field_names')
          ? ''
          : 'ext',
      1001,
      $pb.PbFieldType.OM,
      defaultOrMaker: FieldExts.getDefault,
      subBuilder: FieldExts.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(options);
    registry.add(ext);
  }
}
