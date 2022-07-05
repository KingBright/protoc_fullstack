# A protoc plugin to generate isar source code from proto files

## How to use

* STEP1 : compile the exe file

```
dart compile exe bin/protoc_plugin_isar.dart
```

* STEP2 : a very protoc styled call just like following

```
protoc --proto_path test/ test.proto --isar_out=isar:out --plugin=protoc-gen-isar=bin/protoc_plugin_isar.exe
```

