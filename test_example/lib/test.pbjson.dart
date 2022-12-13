///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use optionsDescriptor instead')
const Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'Option1', '2': 0},
    const {'1': 'Option2', '2': 1},
  ],
};

/// Descriptor for `Options`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List optionsDescriptor = $convert.base64Decode('CgdPcHRpb25zEgsKB09wdGlvbjEQABILCgdPcHRpb24yEAE=');
@$core.Deprecated('Use testMessageDescriptor instead')
const TestMessage$json = const {
  '1': 'TestMessage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'name', '17': true},
    const {'1': 'code', '3': 3, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'longCode', '3': 4, '4': 1, '5': 3, '10': 'longCode'},
    const {'1': 'msg', '3': 5, '4': 1, '5': 11, '6': '.dart_test.TestStruct', '10': 'msg'},
    const {'1': 'msg1', '3': 6, '4': 1, '5': 11, '6': '.dart_test.TestMessage', '10': 'msg1'},
    const {'1': 'tests2', '3': 7, '4': 3, '5': 11, '6': '.dart_test.Test2', '10': 'tests2'},
    const {'1': 'tests3', '3': 8, '4': 3, '5': 11, '6': '.dart_test.Test3', '10': 'tests3'},
  ],
  '8': const [
    const {'1': '_name'},
  ],
};

/// Descriptor for `TestMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testMessageDescriptor = $convert.base64Decode('CgtUZXN0TWVzc2FnZRIOCgJpZBgBIAEoBVICaWQSFwoEbmFtZRgCIAEoCUgAUgRuYW1liAEBEhIKBGNvZGUYAyABKAVSBGNvZGUSGgoIbG9uZ0NvZGUYBCABKANSCGxvbmdDb2RlEicKA21zZxgFIAEoCzIVLmRhcnRfdGVzdC5UZXN0U3RydWN0UgNtc2cSKgoEbXNnMRgGIAEoCzIWLmRhcnRfdGVzdC5UZXN0TWVzc2FnZVIEbXNnMRIoCgZ0ZXN0czIYByADKAsyEC5kYXJ0X3Rlc3QuVGVzdDJSBnRlc3RzMhIoCgZ0ZXN0czMYCCADKAsyEC5kYXJ0X3Rlc3QuVGVzdDNSBnRlc3RzM0IHCgVfbmFtZQ==');
@$core.Deprecated('Use testStructDescriptor instead')
const TestStruct$json = const {
  '1': 'TestStruct',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'a', '3': 2, '4': 1, '5': 9, '10': 'a'},
    const {'1': 'b', '3': 3, '4': 1, '5': 9, '10': 'b'},
    const {'1': 'c', '3': 4, '4': 1, '5': 12, '10': 'c'},
    const {'1': 'option', '3': 5, '4': 1, '5': 14, '6': '.dart_test.Options', '10': 'option'},
  ],
};

/// Descriptor for `TestStruct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List testStructDescriptor = $convert.base64Decode('CgpUZXN0U3RydWN0Eg4KAmlkGAEgASgFUgJpZBIMCgFhGAIgASgJUgFhEgwKAWIYAyABKAlSAWISDAoBYxgEIAEoDFIBYxIqCgZvcHRpb24YBSABKA4yEi5kYXJ0X3Rlc3QuT3B0aW9uc1IGb3B0aW9u');
@$core.Deprecated('Use test2Descriptor instead')
const Test2$json = const {
  '1': 'Test2',
  '2': const [
    const {'1': 'test', '3': 1, '4': 1, '5': 9, '10': 'test'},
  ],
};

/// Descriptor for `Test2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List test2Descriptor = $convert.base64Decode('CgVUZXN0MhISCgR0ZXN0GAEgASgJUgR0ZXN0');
@$core.Deprecated('Use test3Descriptor instead')
const Test3$json = const {
  '1': 'Test3',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'test', '3': 2, '4': 1, '5': 9, '10': 'test'},
  ],
};

/// Descriptor for `Test3`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List test3Descriptor = $convert.base64Decode('CgVUZXN0MxIOCgJpZBgBIAEoBVICaWQSEgoEdGVzdBgCIAEoCVIEdGVzdA==');
