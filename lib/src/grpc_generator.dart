// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '../protoc.dart';

class GrpcServiceGenerator {
  final ServiceDescriptorProto _descriptor;

  /// The generator of the .pb.dart file that will contain this service.
  final FileGenerator fileGen;

  /// The message types needed directly by this service.
  ///
  /// The key is the fully qualified name.
  /// Populated by [resolve].
  final _deps = <String, FullstackGenerator>{};

  /// Maps each undefined type to a string describing its location.
  ///
  /// Populated by [resolve].
  final _undefinedDeps = <String, String>{};

  /// Fully-qualified gRPC service name.
  late final String _fullServiceName;

  /// Dart class name for client stub.
  late final String _clientClassname;

  /// Dart class name for server stub.
  late final String _serviceClassname;

  /// List of gRPC methods.
  final _methods = <_GrpcMethod>[];

  GrpcServiceGenerator(this._descriptor, this.fileGen) {
    final name = _descriptor.name;
    final package = fileGen.package;

    if (package.isNotEmpty) {
      _fullServiceName = '$package.$name';
    } else {
      _fullServiceName = name;
    }

    // avoid: ClientClient
    _clientClassname = name.endsWith('Client') ? name : '${name}Client';
    // avoid: ServiceServiceBase
    _serviceClassname =
        name.endsWith('Service') ? '${name}Base' : '${name}ServiceBase';
  }

  /// Finds all message types used by this service.
  ///
  /// Puts the types found in [_deps]. If a type name can't be resolved, puts it
  /// in [_undefinedDeps].
  /// Precondition: messages have been registered and resolved.
  void resolve(GenerationContext ctx) {
    for (var method in _descriptor.method) {
      _methods.add(_GrpcMethod(this, ctx, method));
    }
  }

  /// Adds a dependency on the given message type.
  ///
  /// If the type name can't be resolved, adds it to [_undefinedDeps].
  void _addDependency(GenerationContext ctx, String fqname, String location) {
    if (_deps.containsKey(fqname)) return; // Already added.

    final mg = ctx.getFieldType(fqname) as FullstackGenerator?;
    if (mg == null) {
      _undefinedDeps[fqname] = location;
      return;
    }
    mg.checkResolved();
    _deps[mg.dottedName] = mg;
  }

  /// Adds dependencies of [generate] to [imports].
  ///
  /// For each .pb.dart file that the generated code needs to import,
  /// add its generator.
  void addImportsTo(Set<FileGenerator> imports) {
    for (var mg in _deps.values) {
      imports.add(mg.fileGen);
    }
  }

  /// Returns the Dart class name to use for a message type.
  ///
  /// Throws an exception if it can't be resolved.
  String _getDartClassName(String fqname) {
    var mg = _deps[fqname];
    if (mg == null) {
      var location = _undefinedDeps[fqname];
      // TODO(nichite): Throw more actionable error.
      throw 'FAILURE: Unknown type reference ($fqname) for $location';
    }
    return mg.classname;
  }

  void generate(IndentingWriter out) {
    _generateClient(out);
    out.println();
    _generateService(out);
  }

  void generateForClient(String service, IndentingWriter out) {
    _genClientWrapper(out);
  }

  void _genClientWrapper(IndentingWriter out) {
    out.addBlock('class ${_clientClassname}Wrapper extends BaseClient {', '}',
        () {
      out.println('late $_clientClassname _stub;');
      out.addBlock(
          '${_clientClassname}Wrapper(String host,int port) : super(host, port) {',
          '}', () {
        out.println(
            '_stub = $_clientClassname(clientChannel(), options: callOptions());');
      });

      out.println('static ${_clientClassname}Wrapper? _instance;');

      out.addBlock('static init(String host, int port) {', '}', () {
        out.println('_instance = ${_clientClassname}Wrapper(host, port);');
      });

      out.addBlock('static getInstance() {', '}', () {
        out.println('return _instance!;');
      });

      for (var method in _methods) {
        _genMethodWrapper(out, method);
      }
    });
  }

  void _genMethodWrapper(IndentingWriter out, _GrpcMethod method) {
    ExtensionRegistry registry = ExtensionRegistry();
    fs.Options.registerAllExtensions(registry);
    var reparsedOptions = registry.reparseMessage(method.options);
    dynamic options = reparsedOptions.getExtension(fs.Options.options);

    out.println('//${options.mode}');

    out.addBlock(
        '${method._serverStreaming ? 'Stream<${method._responseType}>' : 'Future<${method._responseType}>'} ${lowerCaseFirstLetter(method._grpcName)}(${method._clientStreaming ? 'Stream<${method._requestType}>' : method._requestType} ${lowerCaseFirstLetter(method._requestType)}) ${method._serverStreaming ? '' : 'async'} {',
        '}', () {
      out.println(
          "logger.d('${lowerCaseFirstLetter(method._grpcName)} start');");
      out.addBlock('try {', '}', () {
        out.println(
            'var result = ${method._serverStreaming ? '' : 'await'} _stub.${lowerCaseFirstLetter(method._grpcName)}(${lowerCaseFirstLetter(method._requestType)});');
        var result = r'$result';
        out.println(
            "logger.d('${lowerCaseFirstLetter(method._grpcName)} success: $result');");
        out.println('return result;');
      });

      out.addBlock('catch (e, trace) {', '}', () {
        var e = r'$e';
        var trace = r'$trace';
        out.println("logger.e('error: $e $trace');");
        out.println('rethrow;');
      });
    });
  }

  void generateForBloc(String service, IndentingWriter out) {
    for (var method in _methods) {
      /// generate repository
      _genRepo(out, method);

      /// generate RepositoryProvider
      _genRepoProvider(out, method);

      /// generate state
      _genState(out, method);

      /// events
      /// base event
      _genEvents(out, method);

      /// common status
      _genStatus(out, method);

      /// bloc
      _genBloc(out, method);

      /// consumer
      _genConsumer(out, method);

      /// component
      _genComponent(out, method);

      /// page
      // _genPage(out, method);
    }
  }

  void _genPage(IndentingWriter out, _GrpcMethod method) {
    String methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock('class ${methodName}Page extends StatefulWidget {', '}', () {
      out.println('final Widget Function(BuildContext context) builder;');
      out.println(
          'const ${methodName}Page(this.builder, { Key? key }) : super(key: key);');

      out.println('@override');
      out.println('State createState() => _${methodName}State();');
    });

    out.addBlock(
        'class _${methodName}State extends State<${methodName}Page> {', '}',
        () {
      out.println('@override');
      out.addBlock('Widget build(BuildContext context) {', '}', () {
        out.println('return widget.builder(context);');
      });
    });
  }

  void _genComponent(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock('class ${methodName}Component extends StatelessWidget {', '}',
        () {
      out.println('''
    final BlocWidgetBuilder<${methodName}State> builder;
    final BlocWidgetListener<${methodName}State> listener;
    final BlocBuilderCondition<${methodName}State>? buildWhen;
    final BlocListenerCondition<${methodName}State>? listenWhen;

    ${methodName}Component(
      {super.key,
      required this.builder,
      required this.listener,
      this.buildWhen,
      this.listenWhen,
    });

    @override
    Widget build(BuildContext context) {
      return RepositoryProvider(
        create: (context) => ${methodName}Repository(),
        child: BlocProvider(
          lazy: false,
          create: (BuildContext context) => ${methodName}Bloc(context),
          child: ${methodName}Consumer(
            key: key,
            builder: builder,
            listener: listener,
            buildWhen: buildWhen,
            listenWhen: listenWhen,
          ),
        ),
      );
    }
''');
    });
  }

  void _genConsumer(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock(
        'class ${methodName}Consumer extends BlocConsumer<${methodName}Bloc, ${methodName}State> {',
        '}', () {
      out.println('''
const ${methodName}Consumer(
      {super.key,
      required super.builder,
      required super.listener,
      super.buildWhen,
      super.listenWhen}): super();
''');
    });
  }

  void _genBloc(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock(
        'class ${methodName}Bloc extends Bloc<${methodName}Event,${methodName}State> {',
        '}', () {
      out.println('final BuildContext context;');

      /// constructor
      out.addBlock(
          '''${methodName}Bloc(this.context, {${method._requestType}? ${lowerCaseFirstLetter(method._requestType)}, ${method._responseType}? ${lowerCaseFirstLetter(method._responseType)}, Error? error})
          : super(${methodName}State(${methodName}Status.initial, ${lowerCaseFirstLetter(method._requestType)}, ${lowerCaseFirstLetter(method._responseType)}, error)) {''',
          '}', () {
        out.println('on<${methodName}Started>(_on${methodName}Start);');
        out.println('on<${methodName}Retry>(_on${methodName}Retry);');
        out.println('');
      });

      /// repository obtain method
      out.addBlock('${methodName}Repository repository() {', '}', () {
        out.println(
            'return RepositoryProvider.of<${methodName}Repository>(context);');
      });

      /// on start
      out.addBlock(
          'Future<void> _on${methodName}Start(${methodName}Started event, Emitter<${methodName}State> emit,) async {',
          '}', () {
        out.println(
            'emit(state.copyWith(status: () => ${methodName}Status.loading, ${lowerCaseFirstLetter(method._requestType)}: () => event.${lowerCaseFirstLetter(method._requestType)}));');

        out.addBlock('await emit.forEach<${method._responseType}>(', ');', () {
          out.println(
              'repository().${lowerCaseFirstLetter(methodName)}(state.${lowerCaseFirstLetter(method._requestType)}!).asStream(),');
          out.println(
              'onData: (${lowerCaseFirstLetter(method._responseType)}) => state.copyWith(status: () => ${methodName}Status.success, ${lowerCaseFirstLetter(method._responseType)}: () => ${lowerCaseFirstLetter(method._responseType)}),');
          out.println(
              'onError: (err, stackTrace) => state.copyWith(status: () => ${methodName}Status.failure, error: () => err is Error ? err : Error()),');
        });
      });

      /// on retry
      out.addBlock(
          'Future<void> _on${methodName}Retry(${methodName}Retry event, Emitter<${methodName}State> emit,) async {',
          '}', () {
        out.addBlock('if (event.prevError != null) {', '}', () {
          out.println('// todo: do something according the previous error');
        });

        out.println(
            'emit(state.copyWith(status: () => ${methodName}Status.loading, ${lowerCaseFirstLetter(method._requestType)}: () => event.${lowerCaseFirstLetter(method._requestType)}));');

        out.addBlock('await emit.forEach<${method._responseType}>(', ');', () {
          out.println(
              'repository().${lowerCaseFirstLetter(methodName)}(state.${lowerCaseFirstLetter(method._requestType)}!).asStream(),');
          out.println(
              'onData: (${lowerCaseFirstLetter(method._responseType)}) => state.copyWith(status: () => ${methodName}Status.success, ${lowerCaseFirstLetter(method._responseType)}: () => ${lowerCaseFirstLetter(method._responseType)}),');
          out.println(
              'onError: (err, stackTrace) => state.copyWith(status: () => ${methodName}Status.failure, error: () => err is Error ? err : Error()),');
        });
      });
    });
  }

  void _genStatus(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.println(
        'enum ${methodName}Status { initial, loading, success, failure }');
  }

  void _genEvents(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.println('abstract class ${methodName}Event extends Equatable {}');

    /// start event
    out.addBlock('class ${methodName}Started extends ${methodName}Event {', '}',
        () {
      out.println(
          '${methodName}Started(this.${lowerCaseFirstLetter(method._requestType)});');
      out.println(
          'final ${method._requestType} ${lowerCaseFirstLetter(method._requestType)};');
      out.println('@override');
      out.println(
          'List<Object?> get props => [${lowerCaseFirstLetter(method._requestType)}];');
    });

    /// retry event
    out.addBlock('class ${methodName}Retry extends ${methodName}Event {', '}',
        () {
      out.println(
          '${methodName}Retry(this.${lowerCaseFirstLetter(method._requestType)}, [this.prevError]);');
      out.println(
          'final ${method._requestType} ${lowerCaseFirstLetter(method._requestType)};');
      out.println('final BlocError? prevError;');
      out.println('@override');
      out.println(
          'List<Object?> get props => [${lowerCaseFirstLetter(method._requestType)}, prevError];');
    });
  }

  void _genState(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock('class ${methodName}State extends Equatable {', '}', () {
      out.println(
          'const ${methodName}State(this.status, this.${lowerCaseFirstLetter(method._requestType)}, this.${lowerCaseFirstLetter(method._responseType)}, this.error);');
      out.println('final ${methodName}Status status;');
      out.println(
          'final ${method._requestType}? ${lowerCaseFirstLetter(method._requestType)};');
      out.println(
          'final ${method._responseType}? ${lowerCaseFirstLetter(method._responseType)};');
      out.println('final Error? error;');

      out.println('@override');
      out.println(
          'List<Object?> get props => [status, ${lowerCaseFirstLetter(method._requestType)}, ${lowerCaseFirstLetter(method._responseType)}, error];');

      out.println('''
${methodName}State copyWith({
    ${methodName}Status Function()? status,
    ${method._requestType} Function()? ${lowerCaseFirstLetter(method._requestType)},
    ${method._responseType} Function()? ${lowerCaseFirstLetter(method._responseType)},
    Error? Function()? error,
  }) {
    return ${methodName}State(
      status != null ? status() : this.status,
      ${lowerCaseFirstLetter(method._requestType)} != null ? ${lowerCaseFirstLetter(method._requestType)}() : this.${lowerCaseFirstLetter(method._requestType)},
      ${lowerCaseFirstLetter(method._responseType)} != null ? ${lowerCaseFirstLetter(method._responseType)}() : this.${lowerCaseFirstLetter(method._responseType)},
      error != null ? error() : this.error,
    );
  }
''');
    });
  }

  void _genRepoProvider(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock(
        'class ${methodName}RepositoryProvider extends RepositoryProvider {',
        '}', () {
      out.println(
          '${methodName}RepositoryProvider({super.key, super.child, super.lazy})');
      out.println(
          '    : super(create: (context) => {${methodName}Repository()});');
    });
  }

  void _genRepo(IndentingWriter out, _GrpcMethod method) {
    var methodName = upperCaseFirstLetter(method._grpcName);
    out.addBlock('class ${methodName}Repository {', '}', () {
      out.addBlock(
          'Future<${method._responseType}> ${method._dartName}(${method._requestType} ${lowerCaseFirstLetter(method._requestType)}) async {',
          '}', () {
        out.println(
            'return ${_clientClassname}Wrapper.getInstance().${method._dartName}(${lowerCaseFirstLetter(method._requestType)});');
      });
    });
  }

  void _generateClient(IndentingWriter out) {
    out.addBlock('class $_clientClassname extends $_client {', '}', () {
      for (final method in _methods) {
        method.generateClientMethodDescriptor(out);
      }
      out.println();
      out.println('$_clientClassname($_clientChannel channel,');
      out.println('    {$_callOptions? options,');
      out.println(
          '    $coreImportPrefix.Iterable<$_interceptor>? interceptors})');
      out.println('    : super(channel, options: options,');
      out.println('      interceptors: interceptors);');
      for (final method in _methods) {
        method.generateClientStub(out);
      }
    });
  }

  void _generateService(IndentingWriter out) {
    out.addBlock('abstract class $_serviceClassname extends $_service {', '}',
        () {
      out.println(
          '$coreImportPrefix.String get \$name => \'$_fullServiceName\';');
      out.println();
      out.addBlock('$_serviceClassname() {', '}', () {
        for (final method in _methods) {
          method.generateServiceMethodRegistration(out);
        }
      });
      out.println();
      for (final method in _methods) {
        method.generateServiceMethodPreamble(out);
      }
      for (final method in _methods) {
        method.generateServiceMethodStub(out);
      }
    });
  }

  static final String _callOptions = '$grpcImportPrefix.CallOptions';
  static final String _interceptor = '$grpcImportPrefix.ClientInterceptor';
  static final String _client = '$grpcImportPrefix.Client';
  static final String _clientChannel = '$grpcImportPrefix.ClientChannel';
  static final String _service = '$grpcImportPrefix.Service';
}

class _GrpcMethod {
  final String _grpcName;
  final String _dartName;
  final String _serviceName;

  final bool _clientStreaming;
  final bool _serverStreaming;

  final String _requestType;
  final String _responseType;

  final String _argumentType;
  final String _clientReturnType;
  final String _serverReturnType;

  final MethodOptions options;

  _GrpcMethod._(
      this._grpcName,
      this._dartName,
      this._serviceName,
      this._clientStreaming,
      this._serverStreaming,
      this._requestType,
      this._responseType,
      this._argumentType,
      this._clientReturnType,
      this._serverReturnType,
      this.options);

  factory _GrpcMethod(GrpcServiceGenerator service, GenerationContext ctx,
      MethodDescriptorProto method) {
    final grpcName = method.name;
    final dartName = lowerCaseFirstLetter(grpcName);

    final clientStreaming = method.clientStreaming;
    final serverStreaming = method.serverStreaming;

    service._addDependency(ctx, method.inputType, 'input type of $grpcName');
    service._addDependency(ctx, method.outputType, 'output type of $grpcName');

    final requestType = service._getDartClassName(method.inputType);
    final responseType = service._getDartClassName(method.outputType);

    final argumentType =
        clientStreaming ? '$_stream<$requestType>' : requestType;
    final clientReturnType = serverStreaming
        ? '$_responseStream<$responseType>'
        : '$_responseFuture<$responseType>';
    final serverReturnType =
        serverStreaming ? '$_stream<$responseType>' : '$_future<$responseType>';

    return _GrpcMethod._(
        grpcName,
        dartName,
        service._fullServiceName,
        clientStreaming,
        serverStreaming,
        requestType,
        responseType,
        argumentType,
        clientReturnType,
        serverReturnType,
        method.options);
  }

  void generateClientMethodDescriptor(IndentingWriter out) {
    out.println(
        'static final _\$$_dartName = $_clientMethod<$_requestType, $_responseType>(');
    out.println('    \'/$_serviceName/$_grpcName\',');
    out.println('    ($_requestType value) => value.writeToBuffer(),');
    out.println(
        '    ($coreImportPrefix.List<$coreImportPrefix.int> value) => $_responseType.fromBuffer(value));');
  }

  void generateClientStub(IndentingWriter out) {
    out.println();
    out.addBlock(
        '$_clientReturnType $_dartName($_argumentType request, {${GrpcServiceGenerator._callOptions}? options}) {',
        '}', () {
      if (_clientStreaming && _serverStreaming) {
        out.println(
            'return \$createStreamingCall(_\$$_dartName, request, options: options);');
      } else if (_clientStreaming && !_serverStreaming) {
        out.println(
            'return \$createStreamingCall(_\$$_dartName, request, options: options).single;');
      } else if (!_clientStreaming && _serverStreaming) {
        out.println(
            'return \$createStreamingCall(_\$$_dartName, $_stream.fromIterable([request]), options: options);');
      } else {
        out.println(
            'return \$createUnaryCall(_\$$_dartName, request, options: options);');
      }
    });
  }

  void generateServiceMethodRegistration(IndentingWriter out) {
    out.println('\$addMethod($_serviceMethod<$_requestType, $_responseType>(');
    out.println('    \'$_grpcName\',');
    out.println('    $_dartName${_clientStreaming ? '' : '_Pre'},');
    out.println('    $_clientStreaming,');
    out.println('    $_serverStreaming,');
    out.println(
        '    ($coreImportPrefix.List<$coreImportPrefix.int> value) => $_requestType.fromBuffer(value),');
    out.println('    ($_responseType value) => value.writeToBuffer()));');
  }

  void generateServiceMethodPreamble(IndentingWriter out) {
    if (_clientStreaming) return;

    out.addBlock(
        '$_serverReturnType ${_dartName}_Pre($_serviceCall call, $_future<$_requestType> request) async${_serverStreaming ? '*' : ''} {',
        '}', () {
      if (_serverStreaming) {
        out.println('yield* $_dartName(call, await request);');
      } else {
        out.println('return $_dartName(call, await request);');
      }
    });
    out.println();
  }

  void generateServiceMethodStub(IndentingWriter out) {
    out.println(
        '$_serverReturnType $_dartName($_serviceCall call, $_argumentType request);');
  }

  static final String _serviceCall = '$grpcImportPrefix.ServiceCall';
  static final String _serviceMethod = '$grpcImportPrefix.ServiceMethod';
  static final String _clientMethod = '$grpcImportPrefix.ClientMethod';
  static final String _future = '$asyncImportPrefix.Future';
  static final String _stream = '$asyncImportPrefix.Stream';
  static final String _responseFuture = '$grpcImportPrefix.ResponseFuture';
  static final String _responseStream = '$grpcImportPrefix.ResponseStream';
}
