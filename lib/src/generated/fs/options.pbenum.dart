///
//  Generated code. Do not modify.
//  source: fs/options.proto
//
// @dart = 2.18
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MethodOptions_CacheMode extends $pb.ProtobufEnum {
  static const MethodOptions_CacheMode CacheFirst = MethodOptions_CacheMode._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'CacheFirst');
  static const MethodOptions_CacheMode RemoteFirst = MethodOptions_CacheMode._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'RemoteFirst');
  static const MethodOptions_CacheMode Never = MethodOptions_CacheMode._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Never');

  static const $core.List<MethodOptions_CacheMode> values =
      <MethodOptions_CacheMode>[
    CacheFirst,
    RemoteFirst,
    Never,
  ];

  static final $core.Map<$core.int, MethodOptions_CacheMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MethodOptions_CacheMode? valueOf($core.int value) => _byValue[value];

  const MethodOptions_CacheMode._($core.int v, $core.String n) : super(v, n);
}

class MethodOptions_Mode extends $pb.ProtobufEnum {
  static const MethodOptions_Mode Remote = MethodOptions_Mode._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Remote');
  static const MethodOptions_Mode Local = MethodOptions_Mode._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Local');
  static const MethodOptions_Mode Both = MethodOptions_Mode._(
      2,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'Both');

  static const $core.List<MethodOptions_Mode> values = <MethodOptions_Mode>[
    Remote,
    Local,
    Both,
  ];

  static final $core.Map<$core.int, MethodOptions_Mode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static MethodOptions_Mode? valueOf($core.int value) => _byValue[value];

  const MethodOptions_Mode._($core.int v, $core.String n) : super(v, n);
}
