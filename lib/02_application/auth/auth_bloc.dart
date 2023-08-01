import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../01_presentation/widgets/toast.dart';
import '../../03_domain/di/injection.dart';
import '../../03_domain/auth/i_auth_repo.dart';
import '../../05_core/failure/main_failure.dart';
import '../../05_core/services/shared_pref.dart';
import '../../03_domain/auth/models/login_model.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _iAuthRepo;
  AuthBloc(this._iAuthRepo) : super(AuthState.initial()) {
    on<_Authenticate>((event, emit) async {
      final String? fetchFromSP =
          await getIt<CacheHelper>().getCachedData(key: "access_token");
      bool? isAuthenticated = fetchFromSP != null ? true : false;
      emit(state.copyWith(isAuthenticated: isAuthenticated));
      log("$isAuthenticated", name: "isAuthenticated");
      FlutterNativeSplash.remove();
    });

    // Generate Otp here
    on<_GenerateOtp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Either<MainFailure, dynamic> data =
          await _iAuthRepo.generateOtp(email: event.email);
      data.fold(
        (l) {
          failureToast("Something went wrong");
          emit(state.copyWith(error: true, isLoading: false));
        },
        (r) => emit(state.copyWith(email: event.email, isLoading: false)),
      );
    });
    // Validate otp here

    on<_ValidateOtp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Either<MainFailure, LoginModel> data = await _iAuthRepo.validateOtp(
        otp: event.otp,
        email: state.email ?? "",
      );
      data.fold(
        (l) {
          failureToast("Enter valid otp");
          emit(state.copyWith(error: true, isLoading: false));
        },
        (data) {
          emit(state.copyWith(isLoading: false, logindata: data));
        },
      );
    });
    // Logout
    on<_Logout>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      getIt<CacheHelper>().clearData();
      await Future.delayed(const Duration(seconds: 2));
      emit(state.copyWith(
        isLoading: false,
        isLogout: true,
      ));
    });
    // Reset Bloc
    on<_Reset>((event, emit) async {
      emit(AuthState.initial());
    });
  }
}
