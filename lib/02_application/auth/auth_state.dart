part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    bool? isLogout,
    required bool error,
    LoginModel? logindata,
    required bool isLoading,
    @Default(false) bool isAuthenticated,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
        error: false,
        isLogout: false,
        logindata: null,
        isLoading: false,
        isAuthenticated: false,
      );
}
