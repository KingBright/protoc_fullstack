build-plugin:
	dart compile exe bin/protoc_plugin_fs.dart

proto:
	protoc --proto_path test/ test.proto --dart_out=out