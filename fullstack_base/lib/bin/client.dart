import 'package:grpc/grpc.dart';
import 'package:logger/logger.dart';

abstract class BaseClient {
  final Logger logger = Logger();
  String host;
  int port;

  BaseClient(this.host, this.port);

  ClientChannel clientChannel() {
    return ClientChannel(
      host,
      port: port,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
  }

  CallOptions callOptions() {
    return CallOptions(
        compression: const GzipCodec(), timeout: const Duration(seconds: 5));
  }
}
