import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:test_example/test.pbgrpc.dart';

class LoginService extends LoginServiceBase {
  @override
  Future<Result> login(ServiceCall call, LoginInfo request) {
    sleep(Duration(seconds: 3));
    return Future.value(Result.create());
  }

  @override
  Future<Result> updateUserProfile(ServiceCall call, UserProfile request) {
    throw UnimplementedError();
  }
}

void main() async {
  final server = Server(
    [LoginService()],
    const <Interceptor>[],
    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(address: '127.0.0.1', port: 1234);
  print('Server listening on port ${server.port}...');
}
