part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate() = _Authenticate;
  const factory AuthEvent.generateOtp({required String email}) = _GenerateOtp;
  const factory AuthEvent.validateOtp({required String otp}) = _ValidateOtp;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.reset() = _Reset;
}
