///
//  Generated code. Do not modify.
//  source: fs/test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Result_State extends $pb.ProtobufEnum {
  static const Result_State A = Result_State._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'A');
  static const Result_State B = Result_State._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'B');

  static const $core.List<Result_State> values = <Result_State> [
    A,
    B,
  ];

  static final $core.Map<$core.int, Result_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Result_State? valueOf($core.int value) => _byValue[value];

  const Result_State._($core.int v, $core.String n) : super(v, n);
}

