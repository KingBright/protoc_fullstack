///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use testMessageDescriptor instead')
const TestMessage$json = const {
  '1': 'TestMessage',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'longCode', '3': 3, '4': 1, '5': 3, '10': 'longCode'},
    const {'1': 'msg', '3': 4, '4': 1, '5': 11, '6': '.dart_test.TestStruct', '10': 'msg'},
    const {'1': 'msg1', '3': 5, '4': 1, '5': 11, '6': '.dart_test.TestMessage', '10': 'msg1'},
  ],
  '8': const [
    const {'1': '_name'},
  ],
};

/// Descriptor for `TestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMessageDescriptor = $convert.base64Decode('CgtUZXN0TWVzc2FnZRIXCgRuYW1lGAEgASgJSABSBG5hbWWIAQESEgoEY29kZRgCIAEoBVIEY29kZRIaCghsb25nQ29kZRgDIAEoA1IIbG9uZ0NvZGUSJwoDbXNnGAQgASgLMhUuZGFydF90ZXN0LlRlc3RTdHJ1Y3RSA21zZxIqCgRtc2cxGAUgASgLMhYuZGFydF90ZXN0LlRlc3RNZXNzYWdlUgRtc2cxQgcKBV9uYW1l');
@$core.Deprecated('Use testStructDescriptor instead')
const TestStruct$json = const {
  '1': 'TestStruct',
  '2': const [
    const {'1': 'a', '3': 1, '4': 1, '5': 9, '10': 'a'},
    const {'1': 'b', '3': 2, '4': 1, '5': 9, '10': 'b'},
    const {'1': 'c', '3': 3, '4': 1, '5': 12, '10': 'c'},
  ],
};

/// Descriptor for `TestStruct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testStructDescriptor = $convert.base64Decode('CgpUZXN0U3RydWN0EgwKAWEYASABKAlSAWESDAoBYhgCIAEoCVIBYhIMCgFjGAMgASgMUgFj');
