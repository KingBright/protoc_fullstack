///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'test.pbenum.dart';

export 'test.pbenum.dart';

class TestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longCode', protoName: 'longCode')
    ..aOM<TestStruct>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', subBuilder: TestStruct.create)
    ..aOM<TestMessage>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg1', subBuilder: TestMessage.create)
    ..pc<Test2>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tests2', $pb.PbFieldType.PM, subBuilder: Test2.create)
    ..pc<Test3>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tests3', $pb.PbFieldType.PM, subBuilder: Test3.create)
    ..hasRequiredFields = false
  ;

  TestMessage._() : super();
  factory TestMessage({
    $core.int? id,
    $core.String? name,
    $core.int? code,
    $fixnum.Int64? longCode,
    TestStruct? msg,
    TestMessage? msg1,
    $core.Iterable<Test2>? tests2,
    $core.Iterable<Test3>? tests3,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (code != null) {
      _result.code = code;
    }
    if (longCode != null) {
      _result.longCode = longCode;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (msg1 != null) {
      _result.msg1 = msg1;
    }
    if (tests2 != null) {
      _result.tests2.addAll(tests2);
    }
    if (tests3 != null) {
      _result.tests3.addAll(tests3);
    }
    return _result;
  }
  factory TestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestMessage clone() => TestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestMessage copyWith(void Function(TestMessage) updates) => super.copyWith((message) => updates(message as TestMessage)) as TestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestMessage create() => TestMessage._();
  TestMessage createEmptyInstance() => create();
  static $pb.PbList<TestMessage> createRepeated() => $pb.PbList<TestMessage>();
  @$core.pragma('dart2js:noInline')
  static TestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestMessage>(create);
  static TestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get code => $_getIZ(2);
  @$pb.TagNumber(3)
  set code($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get longCode => $_getI64(3);
  @$pb.TagNumber(4)
  set longCode($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLongCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearLongCode() => clearField(4);

  @$pb.TagNumber(5)
  TestStruct get msg => $_getN(4);
  @$pb.TagNumber(5)
  set msg(TestStruct v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsg() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg() => clearField(5);
  @$pb.TagNumber(5)
  TestStruct ensureMsg() => $_ensure(4);

  @$pb.TagNumber(6)
  TestMessage get msg1 => $_getN(5);
  @$pb.TagNumber(6)
  set msg1(TestMessage v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMsg1() => $_has(5);
  @$pb.TagNumber(6)
  void clearMsg1() => clearField(6);
  @$pb.TagNumber(6)
  TestMessage ensureMsg1() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<Test2> get tests2 => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<Test3> get tests3 => $_getList(7);
}

class TestStruct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestStruct', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'a')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'b')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'c', $pb.PbFieldType.OY)
    ..e<Options>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'option', $pb.PbFieldType.OE, defaultOrMaker: Options.Option1, valueOf: Options.valueOf, enumValues: Options.values)
    ..hasRequiredFields = false
  ;

  TestStruct._() : super();
  factory TestStruct({
    $core.int? id,
    $core.String? a,
    $core.String? b,
    $core.List<$core.int>? c,
    Options? option,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (a != null) {
      _result.a = a;
    }
    if (b != null) {
      _result.b = b;
    }
    if (c != null) {
      _result.c = c;
    }
    if (option != null) {
      _result.option = option;
    }
    return _result;
  }
  factory TestStruct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TestStruct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TestStruct clone() => TestStruct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TestStruct copyWith(void Function(TestStruct) updates) => super.copyWith((message) => updates(message as TestStruct)) as TestStruct; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TestStruct create() => TestStruct._();
  TestStruct createEmptyInstance() => create();
  static $pb.PbList<TestStruct> createRepeated() => $pb.PbList<TestStruct>();
  @$core.pragma('dart2js:noInline')
  static TestStruct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TestStruct>(create);
  static TestStruct? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get a => $_getSZ(1);
  @$pb.TagNumber(2)
  set a($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasA() => $_has(1);
  @$pb.TagNumber(2)
  void clearA() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get b => $_getSZ(2);
  @$pb.TagNumber(3)
  set b($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get c => $_getN(3);
  @$pb.TagNumber(4)
  set c($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasC() => $_has(3);
  @$pb.TagNumber(4)
  void clearC() => clearField(4);

  @$pb.TagNumber(5)
  Options get option => $_getN(4);
  @$pb.TagNumber(5)
  set option(Options v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOption() => $_has(4);
  @$pb.TagNumber(5)
  void clearOption() => clearField(5);
}

class Test2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Test2', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'test')
    ..hasRequiredFields = false
  ;

  Test2._() : super();
  factory Test2({
    $core.String? test,
  }) {
    final _result = create();
    if (test != null) {
      _result.test = test;
    }
    return _result;
  }
  factory Test2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Test2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Test2 clone() => Test2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Test2 copyWith(void Function(Test2) updates) => super.copyWith((message) => updates(message as Test2)) as Test2; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Test2 create() => Test2._();
  Test2 createEmptyInstance() => create();
  static $pb.PbList<Test2> createRepeated() => $pb.PbList<Test2>();
  @$core.pragma('dart2js:noInline')
  static Test2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Test2>(create);
  static Test2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get test => $_getSZ(0);
  @$pb.TagNumber(1)
  set test($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTest() => $_has(0);
  @$pb.TagNumber(1)
  void clearTest() => clearField(1);
}

class Test3 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Test3', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'test')
    ..hasRequiredFields = false
  ;

  Test3._() : super();
  factory Test3({
    $core.int? id,
    $core.String? test,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (test != null) {
      _result.test = test;
    }
    return _result;
  }
  factory Test3.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Test3.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Test3 clone() => Test3()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Test3 copyWith(void Function(Test3) updates) => super.copyWith((message) => updates(message as Test3)) as Test3; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Test3 create() => Test3._();
  Test3 createEmptyInstance() => create();
  static $pb.PbList<Test3> createRepeated() => $pb.PbList<Test3>();
  @$core.pragma('dart2js:noInline')
  static Test3 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Test3>(create);
  static Test3? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get test => $_getSZ(1);
  @$pb.TagNumber(2)
  set test($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTest() => $_has(1);
  @$pb.TagNumber(2)
  void clearTest() => clearField(2);
}

