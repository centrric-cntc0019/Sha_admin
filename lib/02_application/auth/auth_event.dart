part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate() = _Authenticate;
  const factory AuthEvent.login(
      {required String username, required String pswd}) = _Login;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.reset() = _Reset;
}
