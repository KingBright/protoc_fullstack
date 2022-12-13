///
//  Generated code. Do not modify.
//  source: test.proto
//
// @dart = 2.17
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

part of 'test.fs.dart';

class testRepository {
  Future<TestStruct> test(TestMessage testMessage) async {
    return TestClientWrapper.getInstance().test(testMessage);
  }
}

class testRepositoryProvider extends RepositoryProvider {
  testRepositoryProvider({super.key, super.child, super.lazy})
      : super(create: (context) => {testRepository()});
}

class testState extends Equatable {
  const testState(this.status, this.testMessage, this.testStruct, this.error);
  final testStatus status;
  final TestMessage? testMessage;
  final TestStruct? testStruct;
  final Error? error;
  @override
  List<Object?> get props => [status, testMessage, testStruct, error];
  testState copyWith({
    testStatus Function()? status,
    TestMessage Function()? testMessage,
    TestStruct Function()? testStruct,
    Error? Function()? error,
  }) {
    return testState(
      status != null ? status() : this.status,
      testMessage != null ? testMessage() : this.testMessage,
      testStruct != null ? testStruct() : this.testStruct,
      error != null ? error() : this.error,
    );
  }
}

abstract class testEvent extends Equatable {}

class testStarted extends testEvent {
  testStarted(this.testMessage);
  final TestMessage testMessage;
  @override
  List<Object?> get props => [testMessage];
}

class testRetry extends testEvent {
  testRetry(this.testMessage, [this.prevError]);
  final TestMessage testMessage;
  final BlocError? prevError;
  @override
  List<Object?> get props => [testMessage, prevError];
}

enum testStatus { initial, loading, success, failure }

class testBloc extends Bloc<testEvent, testState> {
  final testRepository repository = testRepository();
  testBloc({TestMessage? testMessage, TestStruct? testStruct, Error? error})
      : super(testState(testStatus.initial, testMessage, testStruct, error)) {
    on<testStarted>(_ontestStart);
    on<testRetry>(_ontestRetry);
  }
  Future<void> _ontestStart(
    testStarted event,
    Emitter<testState> emit,
  ) async {
    emit(state.copyWith(
        status: () => testStatus.loading,
        testMessage: () => event.testMessage));
    await emit.forEach<TestStruct>(
      repository.test(state.testMessage!).asStream(),
      onData: (testStruct) => state.copyWith(
          status: () => testStatus.success, testStruct: () => testStruct),
      onError: (err, stackTrace) => state.copyWith(
          status: () => testStatus.failure,
          error: () => err is Error ? err : Error()),
    );
  }

  Future<void> _ontestRetry(
    testRetry event,
    Emitter<testState> emit,
  ) async {
    if (event.prevError != null) {
      // todo: do something according the previous error
    }
    emit(state.copyWith(
        status: () => testStatus.loading,
        testMessage: () => event.testMessage));
    await emit.forEach<TestStruct>(
      repository.test(state.testMessage!).asStream(),
      onData: (testStruct) => state.copyWith(
          status: () => testStatus.success, testStruct: () => testStruct),
      onError: (err, stackTrace) => state.copyWith(
          status: () => testStatus.failure,
          error: () => err is Error ? err : Error()),
    );
  }
}

class testConsumer extends BlocConsumer<testBloc, testState> {
  const testConsumer(
      {super.key,
      required super.builder,
      required super.listener,
      super.buildWhen,
      super.listenWhen});
}

class testComponent extends RepositoryProvider {
  testComponent(
      {super.key,
      required BlocWidgetBuilder<testState> builder,
      required BlocWidgetListener<testState> listener,
      BlocBuilderCondition<testState>? buildWhen,
      BlocListenerCondition<testState>? listenWhen,
      super.lazy})
      : super(
            create: (context) => {testRepository()},
            child: testConsumer(
              key: key,
              builder: builder,
              listener: listener,
              buildWhen: buildWhen,
              listenWhen: listenWhen,
            ));
}

class testPage extends StatefulWidget {
  final Widget Function(BuildContext context) builder;
  const testPage(this.builder, {Key? key}) : super(key: key);
  @override
  State createState() => _testState();
}

class _testState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
