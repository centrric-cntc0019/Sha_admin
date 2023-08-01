// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  String? get email => throw _privateConstructorUsedError;
  bool? get isLogout => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  LoginModel? get logindata => throw _privateConstructorUsedError;
  bool? get isAuthenticated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? email,
      bool? isLogout,
      bool error,
      LoginModel? logindata,
      bool? isAuthenticated,
      bool isLoading});

  $LoginModelCopyWith<$Res>? get logindata;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? isLogout = freezed,
    Object? error = null,
    Object? logindata = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogout: freezed == isLogout
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      logindata: freezed == logindata
          ? _value.logindata
          : logindata // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<$Res>? get logindata {
    if (_value.logindata == null) {
      return null;
    }

    return $LoginModelCopyWith<$Res>(_value.logindata!, (value) {
      return _then(_value.copyWith(logindata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      bool? isLogout,
      bool error,
      LoginModel? logindata,
      bool? isAuthenticated,
      bool isLoading});

  @override
  $LoginModelCopyWith<$Res>? get logindata;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? isLogout = freezed,
    Object? error = null,
    Object? logindata = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Initial(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogout: freezed == isLogout
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      logindata: freezed == logindata
          ? _value.logindata
          : logindata // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.email,
      this.isLogout,
      required this.error,
      this.logindata,
      this.isAuthenticated,
      required this.isLoading});

  @override
  final String? email;
  @override
  final bool? isLogout;
  @override
  final bool error;
  @override
  final LoginModel? logindata;
  @override
  final bool? isAuthenticated;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(email: $email, isLogout: $isLogout, error: $error, logindata: $logindata, isAuthenticated: $isAuthenticated, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isLogout, isLogout) ||
                other.isLogout == isLogout) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.logindata, logindata) ||
                other.logindata == logindata) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isLogout, error,
      logindata, isAuthenticated, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {final String? email,
      final bool? isLogout,
      required final bool error,
      final LoginModel? logindata,
      final bool? isAuthenticated,
      required final bool isLoading}) = _$_Initial;

  @override
  String? get email;
  @override
  bool? get isLogout;
  @override
  bool get error;
  @override
  LoginModel? get logindata;
  @override
  bool? get isAuthenticated;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticateCopyWith<$Res> {
  factory _$$_AuthenticateCopyWith(
          _$_Authenticate value, $Res Function(_$_Authenticate) then) =
      __$$_AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Authenticate>
    implements _$$_AuthenticateCopyWith<$Res> {
  __$$_AuthenticateCopyWithImpl(
      _$_Authenticate _value, $Res Function(_$_Authenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticate implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
abstract class _$$_GenerateOtpCopyWith<$Res> {
  factory _$$_GenerateOtpCopyWith(
          _$_GenerateOtp value, $Res Function(_$_GenerateOtp) then) =
      __$$_GenerateOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_GenerateOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_GenerateOtp>
    implements _$$_GenerateOtpCopyWith<$Res> {
  __$$_GenerateOtpCopyWithImpl(
      _$_GenerateOtp _value, $Res Function(_$_GenerateOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_GenerateOtp(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenerateOtp implements _GenerateOtp {
  const _$_GenerateOtp({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.generateOtp(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateOtp &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      __$$_GenerateOtpCopyWithImpl<_$_GenerateOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) {
    return generateOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) {
    return generateOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class _GenerateOtp implements AuthEvent {
  const factory _GenerateOtp({required final String email}) = _$_GenerateOtp;

  String get email;
  @JsonKey(ignore: true)
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidateOtpCopyWith<$Res> {
  factory _$$_ValidateOtpCopyWith(
          _$_ValidateOtp value, $Res Function(_$_ValidateOtp) then) =
      __$$_ValidateOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$_ValidateOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ValidateOtp>
    implements _$$_ValidateOtpCopyWith<$Res> {
  __$$_ValidateOtpCopyWithImpl(
      _$_ValidateOtp _value, $Res Function(_$_ValidateOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$_ValidateOtp(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidateOtp implements _ValidateOtp {
  const _$_ValidateOtp({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.validateOtp(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateOtp &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateOtpCopyWith<_$_ValidateOtp> get copyWith =>
      __$$_ValidateOtpCopyWithImpl<_$_ValidateOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) {
    return validateOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) {
    return validateOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (validateOtp != null) {
      return validateOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) {
    return validateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) {
    return validateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (validateOtp != null) {
      return validateOtp(this);
    }
    return orElse();
  }
}

abstract class _ValidateOtp implements AuthEvent {
  const factory _ValidateOtp({required final String otp}) = _$_ValidateOtp;

  String get otp;
  @JsonKey(ignore: true)
  _$$_ValidateOtpCopyWith<_$_ValidateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'AuthEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String email) generateOtp,
    required TResult Function(String otp) validateOtp,
    required TResult Function() logout,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String email)? generateOtp,
    TResult? Function(String otp)? validateOtp,
    TResult? Function()? logout,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String email)? generateOtp,
    TResult Function(String otp)? validateOtp,
    TResult Function()? logout,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_GenerateOtp value) generateOtp,
    required TResult Function(_ValidateOtp value) validateOtp,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_GenerateOtp value)? generateOtp,
    TResult? Function(_ValidateOtp value)? validateOtp,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_GenerateOtp value)? generateOtp,
    TResult Function(_ValidateOtp value)? validateOtp,
    TResult Function(_Logout value)? logout,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements AuthEvent {
  const factory _Reset() = _$_Reset;
}
