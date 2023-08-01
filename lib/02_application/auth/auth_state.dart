part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? email,
    bool? isLogout,
    required bool error,
    LoginModel? logindata,
    bool? isAuthenticated,
    required bool isLoading,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
        email: null,
        error: false,
        isLogout: false,
        logindata: null,
        isLoading: false,
        isAuthenticated: false,
      );
}
