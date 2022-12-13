///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.17
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

part of 'test.fs.dart';

class TestClientWrapper extends BaseClient {
  late TestClient _stub;
  TestClientWrapper(String host, int port) : super(host, port) {
    _stub = TestClient(channel, options: options);
  }
  static TestClientWrapper? _instance;
  static init(String host, int port) {
    _instance = TestClientWrapper(host, port);
  }

  static getInstance() {
    return _instance!;
  }

  Future<TestStruct> test(TestMessage testMessage) async {
    logger.d('test start');
    try {
      var result = await _stub.test(testMessage);
      logger.d('test success: $result');
      return result;
    } catch (e, trace) {
      logger.e('error: $e $trace');
      rethrow;
    }
  }
}
