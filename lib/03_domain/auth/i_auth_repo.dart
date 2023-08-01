import 'package:dartz/dartz.dart';
import 'package:sha_admin/03_domain/auth/models/login_model.dart';

import '../../05_core/failure/main_failure.dart';

abstract class IAuthRepo {
  Future<Either<MainFailure, dynamic>> generateOtp({required String email});
  Future<Either<MainFailure, LoginModel>> validateOtp({
    required String otp,
    required String email,
  });
}
