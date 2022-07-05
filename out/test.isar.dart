///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core';

import 'package:isar/isar.dart';
import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';

import 'test.pb.dart' as $proto;

part 'test.isar.g.dart';

@Collection()
class TestMessage {
  TestMessage() : super();

  factory TestMessage.create({
    String? name,
    int? code,
    Int64? longCode,
    TestStruct? msg,
    TestMessage? msg1,
  }) {
    final result = TestMessage();
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
      result.msg = msg;
    }
    if (msg1 != null) {
      result.msg1 = msg1;
    }
    return result;
  }

  factory TestMessage.fromProto($proto.TestMessage proto) {
    final result = TestMessage();
    if (proto.name != null) {
      result.name = proto.name;
    }
    if (proto.code != null) {
      result.code = proto.code;
    }
    if (proto.longCode != null) {
      result.longCode = proto.longCode;
    }
    if (proto.msg != null) {
      result.msg = TestStruct.fromProto(proto.msg);
    }
    if (proto.msg1 != null) {
      result.msg1 = TestMessage.fromProto(proto.msg1);
    }
    return result;
  }

  @Id()
  int? id = Isar.autoIncrement;

  late String name;

  late int code;

  late Int64 longCode;

  late TestStruct msg;

  late TestMessage msg1;
}

@Collection()
class TestStruct {
  TestStruct() : super();

  factory TestStruct.create({
    String? a,
    String? b,
    List<int>? c,
  }) {
    final result = TestStruct();
    if (a != null) {
      result.a = a;
    }
    if (b != null) {
      result.b = b;
    }
    if (c != null) {
      result.c = c;
    }
    return result;
  }

  factory TestStruct.fromProto($proto.TestStruct proto) {
    final result = TestStruct();
    if (proto.a != null) {
      result.a = proto.a;
    }
    if (proto.b != null) {
      result.b = proto.b;
    }
    if (proto.c != null) {
      result.c = proto.c;
    }
    return result;
  }

  @Id()
  int? id = Isar.autoIncrement;

  late String a;

  late String b;

  late List<int> c;
}
