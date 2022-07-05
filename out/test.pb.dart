///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class TestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longCode', protoName: 'longCode')
    ..aOM<TestStruct>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', subBuilder: TestStruct.create)
    ..aOM<TestMessage>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg1', subBuilder: TestMessage.create)
    ..hasRequiredFields = false
  ;

  TestMessage._() : super();
  factory TestMessage({
    $core.String? name,
    $core.int? code,
    $fixnum.Int64? longCode,
    TestStruct? msg,
    TestMessage? msg1,
  }) {
    final _result = create();
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get longCode => $_getI64(2);
  @$pb.TagNumber(3)
  set longCode($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongCode() => clearField(3);

  @$pb.TagNumber(4)
  TestStruct get msg => $_getN(3);
  @$pb.TagNumber(4)
  set msg(TestStruct v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsg() => clearField(4);
  @$pb.TagNumber(4)
  TestStruct ensureMsg() => $_ensure(3);

  @$pb.TagNumber(5)
  TestMessage get msg1 => $_getN(4);
  @$pb.TagNumber(5)
  set msg1(TestMessage v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMsg1() => $_has(4);
  @$pb.TagNumber(5)
  void clearMsg1() => clearField(5);
  @$pb.TagNumber(5)
  TestMessage ensureMsg1() => $_ensure(4);
}

class TestStruct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TestStruct', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'dart_test'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'a')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'b')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'c', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  TestStruct._() : super();
  factory TestStruct({
    $core.String? a,
    $core.String? b,
    $core.List<$core.int>? c,
  }) {
    final _result = create();
    if (a != null) {
      _result.a = a;
    }
    if (b != null) {
      _result.b = b;
    }
    if (c != null) {
      _result.c = c;
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
  $core.String get a => $_getSZ(0);
  @$pb.TagNumber(1)
  set a($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get b => $_getSZ(1);
  @$pb.TagNumber(2)
  set b($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get c => $_getN(2);
  @$pb.TagNumber(3)
  set c($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasC() => $_has(2);
  @$pb.TagNumber(3)
  void clearC() => clearField(3);
}

