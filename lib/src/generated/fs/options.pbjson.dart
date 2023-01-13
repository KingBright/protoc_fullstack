///
//  Generated code. Do not modify.
//  source: fs/options.proto
//
// @dart = 2.18
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use methodOptionsDescriptor instead')
const MethodOptions$json = const {
  '1': 'MethodOptions',
  '2': const [
    const {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.fs.MethodOptions.Mode',
      '10': 'mode'
    },
    const {
      '1': 'cacheMode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.fs.MethodOptions.CacheMode',
      '10': 'cacheMode'
    },
  ],
  '4': const [MethodOptions_CacheMode$json, MethodOptions_Mode$json],
};

@$core.Deprecated('Use methodOptionsDescriptor instead')
const MethodOptions_CacheMode$json = const {
  '1': 'CacheMode',
  '2': const [
    const {'1': 'CacheFirst', '2': 0},
    const {'1': 'RemoteFirst', '2': 1},
    const {'1': 'Never', '2': 2},
  ],
};

@$core.Deprecated('Use methodOptionsDescriptor instead')
const MethodOptions_Mode$json = const {
  '1': 'Mode',
  '2': const [
    const {'1': 'Remote', '2': 0},
    const {'1': 'Local', '2': 1},
    const {'1': 'Both', '2': 2},
  ],
};

/// Descriptor for `MethodOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List methodOptionsDescriptor = $convert.base64Decode(
    'Cg1NZXRob2RPcHRpb25zEioKBG1vZGUYASABKA4yFi5mcy5NZXRob2RPcHRpb25zLk1vZGVSBG1vZGUSOQoJY2FjaGVNb2RlGAIgASgOMhsuZnMuTWV0aG9kT3B0aW9ucy5DYWNoZU1vZGVSCWNhY2hlTW9kZSI3CglDYWNoZU1vZGUSDgoKQ2FjaGVGaXJzdBAAEg8KC1JlbW90ZUZpcnN0EAESCQoFTmV2ZXIQAiInCgRNb2RlEgoKBlJlbW90ZRAAEgkKBUxvY2FsEAESCAoEQm90aBAC');
@$core.Deprecated('Use fieldExtsDescriptor instead')
const FieldExts$json = const {
  '1': 'FieldExts',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'required', '3': 3, '4': 1, '5': 8, '10': 'required'},
    const {'1': 'unit', '3': 4, '4': 1, '5': 9, '10': 'unit'},
    const {'1': 'options', '3': 5, '4': 3, '5': 9, '10': 'options'},
    const {'1': 'example', '3': 6, '4': 1, '5': 9, '10': 'example'},
    const {'1': 'validation', '3': 7, '4': 1, '5': 9, '10': 'validation'},
  ],
};

/// Descriptor for `FieldExts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldExtsDescriptor = $convert.base64Decode(
    'CglGaWVsZEV4dHMSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRkZXNjGAIgASgJUgRkZXNjEhoKCHJlcXVpcmVkGAMgASgIUghyZXF1aXJlZBISCgR1bml0GAQgASgJUgR1bml0EhgKB29wdGlvbnMYBSADKAlSB29wdGlvbnMSGAoHZXhhbXBsZRgGIAEoCVIHZXhhbXBsZRIeCgp2YWxpZGF0aW9uGAcgASgJUgp2YWxpZGF0aW9u');
