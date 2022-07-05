build-plugin:
	dart compile exe bin/protoc_plugin_isar.dart

test-plugin:
	protoc --proto_path test/ test.proto --isar_out=isar:out --plugin=protoc-gen-isar=bin/protoc_plugin_isar.exe

proto:
	protoc --proto_path test/ test.proto --dart_out=out