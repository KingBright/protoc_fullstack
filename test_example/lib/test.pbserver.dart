///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'test.pb.dart' as $0;
import 'test.pbjson.dart';

export 'test.pb.dart';

abstract class LoginServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Result> login($pb.ServerContext ctx, $0.LoginInfo request);
  $async.Future<$0.Result> updateUserProfile($pb.ServerContext ctx, $0.UserProfile request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Login': return $0.LoginInfo();
      case 'UpdateUserProfile': return $0.UserProfile();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Login': return this.login(ctx, request as $0.LoginInfo);
      case 'UpdateUserProfile': return this.updateUserProfile(ctx, request as $0.UserProfile);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LoginServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LoginServiceBase$messageJson;
}

