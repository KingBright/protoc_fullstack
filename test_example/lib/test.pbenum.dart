///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Options extends $pb.ProtobufEnum {
  static const Options Option1 = Options._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Option1');
  static const Options Option2 = Options._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Option2');

  static const $core.List<Options> values = <Options> [
    Option1,
    Option2,
  ];

  static final $core.Map<$core.int, Options> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Options? valueOf($core.int value) => _byValue[value];

  const Options._($core.int v, $core.String n) : super(v, n);
}

