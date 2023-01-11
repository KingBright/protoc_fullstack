///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginInfoDescriptor instead')
const LoginInfo$json = const {
  '1': 'LoginInfo',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginInfoDescriptor = $convert.base64Decode('CglMb2dpbkluZm8SFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSEgoEY29kZRgBIAEoBVIEY29kZRIQCgNtc2cYAiABKAlSA21zZw==');
@$core.Deprecated('Use userProfileDescriptor instead')
const UserProfile$json = const {
  '1': 'UserProfile',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 2, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `UserProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileDescriptor = $convert.base64Decode('CgtVc2VyUHJvZmlsZRISCgRuYW1lGAEgASgJUgRuYW1lEhYKBmdlbmRlchgCIAEoCVIGZ2VuZGVyEhAKA2FnZRgDIAEoBVIDYWdl');
const $core.Map<$core.String, $core.dynamic> LoginServiceBase$json = const {
  '1': 'Login',
  '2': const [
    const {'1': 'Login', '2': '.dart_test.LoginInfo', '3': '.dart_test.Result'},
    const {'1': 'UpdateUserProfile', '2': '.dart_test.UserProfile', '3': '.dart_test.Result'},
  ],
};

@$core.Deprecated('Use loginServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LoginServiceBase$messageJson = const {
  '.dart_test.LoginInfo': LoginInfo$json,
  '.dart_test.Result': Result$json,
  '.dart_test.UserProfile': UserProfile$json,
};

/// Descriptor for `Login`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List loginServiceDescriptor = $convert.base64Decode('CgVMb2dpbhIwCgVMb2dpbhIULmRhcnRfdGVzdC5Mb2dpbkluZm8aES5kYXJ0X3Rlc3QuUmVzdWx0Ej4KEVVwZGF0ZVVzZXJQcm9maWxlEhYuZGFydF90ZXN0LlVzZXJQcm9maWxlGhEuZGFydF90ZXN0LlJlc3VsdA==');
