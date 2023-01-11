///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.17
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

part of 'test.fs.dart';

class LoginClientWrapper extends BaseClient {
  late LoginClient _stub;
  LoginClientWrapper(String host, int port) : super(host, port) {
    _stub = LoginClient(clientChannel(), options: callOptions());
  }
  static LoginClientWrapper? _instance;
  static init(String host, int port) {
    _instance = LoginClientWrapper(host, port);
  }

  static getInstance() {
    return _instance!;
  }

  Future<Result> login(LoginInfo loginInfo) async {
    logger.d('login start');
    try {
      var result = await _stub.login(loginInfo);
      logger.d('login success: $result');
      return result;
    } catch (e, trace) {
      logger.e('error: $e $trace');
      rethrow;
    }
  }

  Future<Result> updateUserProfile(UserProfile userProfile) async {
    logger.d('updateUserProfile start');
    try {
      var result = await _stub.updateUserProfile(userProfile);
      logger.d('updateUserProfile success: $result');
      return result;
    } catch (e, trace) {
      logger.e('error: $e $trace');
      rethrow;
    }
  }
}
