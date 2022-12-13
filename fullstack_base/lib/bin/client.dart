import 'package:grpc/grpc.dart';
import 'package:logger/logger.dart';

abstract class BaseClient {
  final Logger logger = Logger();
  late ClientChannel channel;
  late CallOptions options;

  BaseClient(String host, int port) {
    channel = ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    options = CallOptions(
        compression: const GzipCodec(), timeout: const Duration(seconds: 5));
  }
}
