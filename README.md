# A protoc plugin to generate isar source code from proto files

## How to use

* compile the exe file

```
dart compile exe bin/protoc_plugin_isar.dart
```

* very protoc style just like following

```
protoc --proto_path test/ test.proto --isar_out=isar:out --plugin=protoc-gen-isar=bin/protoc_plugin_isar.exe
```

