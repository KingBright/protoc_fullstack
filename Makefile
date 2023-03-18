.PHONY: proto test

plugin:
	dart compile exe bin/protoc_plugin_fs.dart

options:
	protoc -I proto --dart_out=grpc:lib/src/generated fs/options.proto

proto:
	protoc -I proto --dart_out=grpc:test_example/lib fs/test.proto

all: proto options
	protoc -I proto --fs_out=fs:test_example/lib --plugin=protoc-gen-fs=bin/protoc_plugin_fs.exe fs/test.proto
	cd test_example && dart run build_runner build --delete-conflicting-outputs

common_deps:
	dart pub add grpc isar equatable bloc
	dart pub add -d isar_generator build_runner

flutter_deps:
	flutter pub add isar_flutter_libs flutter_bloc

create_dart:
	dart create ${project}
	common_deps

create_flutter:
	flutter create ${project}
	flutter_deps
	common_deps
	
init:
	dart pub get
	cd fullstack_base; dart pub get
	cd fullstack_ui; flutter pub get