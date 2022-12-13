///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'test.pb.dart' as $0;
export 'test.pb.dart';

class TestClient extends $grpc.Client {
  static final _$test = $grpc.ClientMethod<$0.TestMessage, $0.TestStruct>(
      '/dart_test.Test/test',
      ($0.TestMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TestStruct.fromBuffer(value));

  TestClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TestStruct> test($0.TestMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$test, request, options: options);
  }
}

abstract class TestServiceBase extends $grpc.Service {
  $core.String get $name => 'dart_test.Test';

  TestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TestMessage, $0.TestStruct>(
        'test',
        test_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TestMessage.fromBuffer(value),
        ($0.TestStruct value) => value.writeToBuffer()));
  }

  $async.Future<$0.TestStruct> test_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TestMessage> request) async {
    return test(call, await request);
  }

  $async.Future<$0.TestStruct> test(
      $grpc.ServiceCall call, $0.TestMessage request);
}
