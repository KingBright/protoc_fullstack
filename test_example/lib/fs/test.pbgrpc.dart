///
//  Generated code. Do not modify.
//  source: fs/test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'test.pb.dart' as $0;
export 'test.pb.dart';

class LoginClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginInfo, $0.Result>(
      '/fs.Login/Login',
      ($0.LoginInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Result.fromBuffer(value));
  static final _$updateUserProfile =
      $grpc.ClientMethod<$0.UserProfile, $0.Result>(
          '/fs.Login/UpdateUserProfile',
          ($0.UserProfile value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Result.fromBuffer(value));

  LoginClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Result> login($0.LoginInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.Result> updateUserProfile($0.UserProfile request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserProfile, request, options: options);
  }
}

abstract class LoginServiceBase extends $grpc.Service {
  $core.String get $name => 'fs.Login';

  LoginServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginInfo, $0.Result>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginInfo.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserProfile, $0.Result>(
        'UpdateUserProfile',
        updateUserProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserProfile.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
  }

  $async.Future<$0.Result> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginInfo> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Result> updateUserProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserProfile> request) async {
    return updateUserProfile(call, await request);
  }

  $async.Future<$0.Result> login($grpc.ServiceCall call, $0.LoginInfo request);
  $async.Future<$0.Result> updateUserProfile(
      $grpc.ServiceCall call, $0.UserProfile request);
}
