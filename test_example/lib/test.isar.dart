///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.17
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core';

import 'package:isar/isar.dart';
import 'package:fixnum/fixnum.dart';

import 'test.pb.dart';

part 'test.isar.g.dart';

@collection
class $TestMessage {
  $TestMessage() : super();

  factory $TestMessage.create({
    int? id,
    String? name,
    int? code,
    int? longCode,
    $TestStruct? msg,
    $TestMessage? msg1,
    Iterable<$Test2>? tests2,
    Iterable<$Test3>? tests3,
  }) {
    final result = $TestMessage();
    if (id != null) {
      result.id = id;
    }
    if (name != null) {
      result.name = name;
    }
    if (code != null) {
      result.code = code;
    }
    if (longCode != null) {
      result.longCode = longCode;
    }
    if (msg != null) {
      result.msg.value = msg;
    }
    if (msg1 != null) {
      result.msg1.value = msg1;
    }
    if (tests2 != null) {
      result.tests2.addAll(tests2);
    }
    if (tests3 != null) {
      result.tests3.addAll(tests3);
    }
    return result;
  }

  factory $TestMessage.fromProto(TestMessage proto) {
    final result = $TestMessage();
    result.id = proto.id;
    result.name = proto.name;
    result.code = proto.code;
    result.longCode = proto.longCode.toInt();
    result.msg.value = $TestStruct.fromProto(proto.msg);
    result.msg1.value = $TestMessage.fromProto(proto.msg1);
    result.tests2.addAll(proto.tests2.map((e) => $Test2.fromProto(e)));
    result.tests3.addAll(proto.tests3.map((e) => $Test3.fromProto(e)));
    return result;
  }

  TestMessage toProto() {
    var proto = TestMessage.create()
      ..name = name
      ..code = code
      ..longCode = Int64(longCode)
      ..tests2.addAll(tests2.map((e) => e.toProto()))
      ..tests3.addAll(tests3.map((e) => e.toProto()));
    if (msg.value != null) {
      proto.msg = msg.value!.toProto();
    }
    if (msg1.value != null) {
      proto.msg1 = msg1.value!.toProto();
    }
    return proto;
  }

  Id? id = Isar.autoIncrement;

  late String name;

  late int code;

  late int longCode;

  final msg = IsarLink<$TestStruct>();

  final msg1 = IsarLink<$TestMessage>();

  final List<$Test2> tests2 = [];

  final tests3 = IsarLinks<$Test3>();
}

@collection
class $TestStruct {
  $TestStruct() : super();

  factory $TestStruct.create({
    int? id,
    String? a,
    String? b,
    List<int>? c,
    $Options? option,
  }) {
    final result = $TestStruct();
    if (id != null) {
      result.id = id;
    }
    if (a != null) {
      result.a = a;
    }
    if (b != null) {
      result.b = b;
    }
    if (c != null) {
      result.c = c;
    }
    if (option != null) {
      result.option = option;
    }
    return result;
  }

  factory $TestStruct.fromProto(TestStruct proto) {
    final result = $TestStruct();
    result.id = proto.id;
    result.a = proto.a;
    result.b = proto.b;
    result.c = proto.c;
    result.option = OptionsConverter.fromProto(proto.option);
    return result;
  }

  TestStruct toProto() {
    var proto = TestStruct.create()
      ..a = a
      ..b = b
      ..c = c
      ..option = OptionsConverter.toProto(option);
    return proto;
  }

  Id? id = Isar.autoIncrement;

  late String a;

  late String b;

  late List<int> c;

  @enumerated
  late $Options option;
}

@embedded
class $Test2 {
  $Test2() : super();

  factory $Test2.create({
    String? test,
  }) {
    final result = $Test2();
    if (test != null) {
      result.test = test;
    }
    return result;
  }

  factory $Test2.fromProto(Test2 proto) {
    final result = $Test2();
    result.test = proto.test;
    return result;
  }

  Test2 toProto() {
    var proto = Test2.create()..test = test;
    return proto;
  }

  late String test;
}

@collection
class $Test3 {
  $Test3() : super();

  factory $Test3.create({
    int? id,
    String? test,
  }) {
    final result = $Test3();
    if (id != null) {
      result.id = id;
    }
    if (test != null) {
      result.test = test;
    }
    return result;
  }

  factory $Test3.fromProto(Test3 proto) {
    final result = $Test3();
    result.id = proto.id;
    result.test = proto.test;
    return result;
  }

  Test3 toProto() {
    var proto = Test3.create()..test = test;
    return proto;
  }

  Id? id = Isar.autoIncrement;

  late String test;
}

enum $Options {
  Option1,
  Option2,
}

class OptionsConverter {
  static $Options fromProto(Options options) {
    switch (options) {
      case Options.Option1:
        return $Options.Option1;
      case Options.Option2:
        return $Options.Option2;
    }
    return null;
  }

  static Options toProto($Options options) {
    switch (options) {
      case $Options.Option1:
        return Options.Option1;
      case $Options.Option2:
        return Options.Option2;
    }
  }
}
