//
//  Generated code. Do not modify.
//  source: fs/test.proto
//
// @dart = 2.18

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: return_of_invalid_type, unnecessary_this

part of 'test.fs.dart';

class LoginRepository {
  Future<Result> login(LoginInfo loginInfo) async {
    return LoginClientWrapper.getInstance().login(loginInfo);
  }
}
class LoginRepositoryProvider extends RepositoryProvider {
  LoginRepositoryProvider({super.key, super.child, super.lazy})
      : super(create: (context) => {LoginRepository()});
}
class LoginState extends Equatable {
  const LoginState(this.status, this.loginInfo, this.result, this.error);
  final LoginStatus status;
  final LoginInfo? loginInfo;
  final Result? result;
  final Error? error;
  @override
  List<Object?> get props => [status, loginInfo, result, error];
  LoginState copyWith({
      LoginStatus Function()? status,
      LoginInfo Function()? loginInfo,
      Result Function()? result,
      Error? Function()? error,
    }) {
      return LoginState(
        status != null ? status() : this.status,
        loginInfo != null ? loginInfo() : this.loginInfo,
        result != null ? result() : this.result,
        error != null ? error() : this.error,
      );
    }

}
abstract class LoginEvent extends Equatable {}
class LoginStarted extends LoginEvent {
  LoginStarted(this.loginInfo);
  final LoginInfo loginInfo;
  @override
  List<Object?> get props => [loginInfo];
}
class LoginRetry extends LoginEvent {
  LoginRetry(this.loginInfo, [this.prevError]);
  final LoginInfo loginInfo;
  final BlocError? prevError;
  @override
  List<Object?> get props => [loginInfo, prevError];
}
enum LoginStatus { initial, loading, success, failure }
class LoginBloc extends Bloc<LoginEvent,LoginState> {
  final BuildContext context;
  LoginBloc(this.context, {LoginInfo? loginInfo, Result? result, Error? error})
            : super(LoginState(LoginStatus.initial, loginInfo, result, error)) {
    on<LoginStarted>(_onLoginStart);
    on<LoginRetry>(_onLoginRetry);

  }
  LoginRepository repository() {
    return RepositoryProvider.of<LoginRepository>(context);
  }
  Future<void> _onLoginStart(LoginStarted event, Emitter<LoginState> emit,) async {
    emit(state.copyWith(status: () => LoginStatus.loading, loginInfo: () => event.loginInfo));
    await emit.forEach<Result>(
      repository().login(state.loginInfo!).asStream(),
      onData: (result) => state.copyWith(status: () => LoginStatus.success, result: () => result),
      onError: (err, stackTrace) => state.copyWith(status: () => LoginStatus.failure, error: () => err is Error ? err : Error()),
    );
  }
  Future<void> _onLoginRetry(LoginRetry event, Emitter<LoginState> emit,) async {
    if (event.prevError != null) {
      // todo: do something according the previous error
    }
    emit(state.copyWith(status: () => LoginStatus.loading, loginInfo: () => event.loginInfo));
    await emit.forEach<Result>(
      repository().login(state.loginInfo!).asStream(),
      onData: (result) => state.copyWith(status: () => LoginStatus.success, result: () => result),
      onError: (err, stackTrace) => state.copyWith(status: () => LoginStatus.failure, error: () => err is Error ? err : Error()),
    );
  }
}
class LoginConsumer extends BlocConsumer<LoginBloc, LoginState> {
  const LoginConsumer(
        {super.key,
        required super.builder,
        required super.listener,
        super.buildWhen,
        super.listenWhen}): super();

}
class LoginComponent extends StatelessWidget {
      final BlocWidgetBuilder<LoginState> builder;
      final BlocWidgetListener<LoginState> listener;
      final BlocBuilderCondition<LoginState>? buildWhen;
      final BlocListenerCondition<LoginState>? listenWhen;

      LoginComponent(
        {super.key,
        required this.builder,
        required this.listener,
        this.buildWhen,
        this.listenWhen,
      });

      @override
      Widget build(BuildContext context) {
        return RepositoryProvider(
          create: (context) => LoginRepository(),
          child: BlocProvider(
            lazy: false,
            create: (BuildContext context) => LoginBloc(context),
            child: LoginConsumer(
              key: key,
              builder: builder,
              listener: listener,
              buildWhen: buildWhen,
              listenWhen: listenWhen,
            ),
          ),
        );
      }

}
class UpdateUserProfileRepository {
  Future<Result> updateUserProfile(UserProfile userProfile) async {
    return LoginClientWrapper.getInstance().updateUserProfile(userProfile);
  }
}
class UpdateUserProfileRepositoryProvider extends RepositoryProvider {
  UpdateUserProfileRepositoryProvider({super.key, super.child, super.lazy})
      : super(create: (context) => {UpdateUserProfileRepository()});
}
class UpdateUserProfileState extends Equatable {
  const UpdateUserProfileState(this.status, this.userProfile, this.result, this.error);
  final UpdateUserProfileStatus status;
  final UserProfile? userProfile;
  final Result? result;
  final Error? error;
  @override
  List<Object?> get props => [status, userProfile, result, error];
  UpdateUserProfileState copyWith({
      UpdateUserProfileStatus Function()? status,
      UserProfile Function()? userProfile,
      Result Function()? result,
      Error? Function()? error,
    }) {
      return UpdateUserProfileState(
        status != null ? status() : this.status,
        userProfile != null ? userProfile() : this.userProfile,
        result != null ? result() : this.result,
        error != null ? error() : this.error,
      );
    }

}
abstract class UpdateUserProfileEvent extends Equatable {}
class UpdateUserProfileStarted extends UpdateUserProfileEvent {
  UpdateUserProfileStarted(this.userProfile);
  final UserProfile userProfile;
  @override
  List<Object?> get props => [userProfile];
}
class UpdateUserProfileRetry extends UpdateUserProfileEvent {
  UpdateUserProfileRetry(this.userProfile, [this.prevError]);
  final UserProfile userProfile;
  final BlocError? prevError;
  @override
  List<Object?> get props => [userProfile, prevError];
}
enum UpdateUserProfileStatus { initial, loading, success, failure }
class UpdateUserProfileBloc extends Bloc<UpdateUserProfileEvent,UpdateUserProfileState> {
  final BuildContext context;
  UpdateUserProfileBloc(this.context, {UserProfile? userProfile, Result? result, Error? error})
            : super(UpdateUserProfileState(UpdateUserProfileStatus.initial, userProfile, result, error)) {
    on<UpdateUserProfileStarted>(_onUpdateUserProfileStart);
    on<UpdateUserProfileRetry>(_onUpdateUserProfileRetry);

  }
  UpdateUserProfileRepository repository() {
    return RepositoryProvider.of<UpdateUserProfileRepository>(context);
  }
  Future<void> _onUpdateUserProfileStart(UpdateUserProfileStarted event, Emitter<UpdateUserProfileState> emit,) async {
    emit(state.copyWith(status: () => UpdateUserProfileStatus.loading, userProfile: () => event.userProfile));
    await emit.forEach<Result>(
      repository().updateUserProfile(state.userProfile!).asStream(),
      onData: (result) => state.copyWith(status: () => UpdateUserProfileStatus.success, result: () => result),
      onError: (err, stackTrace) => state.copyWith(status: () => UpdateUserProfileStatus.failure, error: () => err is Error ? err : Error()),
    );
  }
  Future<void> _onUpdateUserProfileRetry(UpdateUserProfileRetry event, Emitter<UpdateUserProfileState> emit,) async {
    if (event.prevError != null) {
      // todo: do something according the previous error
    }
    emit(state.copyWith(status: () => UpdateUserProfileStatus.loading, userProfile: () => event.userProfile));
    await emit.forEach<Result>(
      repository().updateUserProfile(state.userProfile!).asStream(),
      onData: (result) => state.copyWith(status: () => UpdateUserProfileStatus.success, result: () => result),
      onError: (err, stackTrace) => state.copyWith(status: () => UpdateUserProfileStatus.failure, error: () => err is Error ? err : Error()),
    );
  }
}
class UpdateUserProfileConsumer extends BlocConsumer<UpdateUserProfileBloc, UpdateUserProfileState> {
  const UpdateUserProfileConsumer(
        {super.key,
        required super.builder,
        required super.listener,
        super.buildWhen,
        super.listenWhen}): super();

}
class UpdateUserProfileComponent extends StatelessWidget {
      final BlocWidgetBuilder<UpdateUserProfileState> builder;
      final BlocWidgetListener<UpdateUserProfileState> listener;
      final BlocBuilderCondition<UpdateUserProfileState>? buildWhen;
      final BlocListenerCondition<UpdateUserProfileState>? listenWhen;

      UpdateUserProfileComponent(
        {super.key,
        required this.builder,
        required this.listener,
        this.buildWhen,
        this.listenWhen,
      });

      @override
      Widget build(BuildContext context) {
        return RepositoryProvider(
          create: (context) => UpdateUserProfileRepository(),
          child: BlocProvider(
            lazy: false,
            create: (BuildContext context) => UpdateUserProfileBloc(context),
            child: UpdateUserProfileConsumer(
              key: key,
              builder: builder,
              listener: listener,
              buildWhen: buildWhen,
              listenWhen: listenWhen,
            ),
          ),
        );
      }

}
