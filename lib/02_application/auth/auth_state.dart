part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    bool? isLogout,
    required bool error,
    bool? isAuthenticated,
    LoginModel? logindata,
    required bool isLoading,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
        error: false,
        isLogout: false,
        logindata: null,
        isLoading: false,
        isAuthenticated: false,
      );
}
