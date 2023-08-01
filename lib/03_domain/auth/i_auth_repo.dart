import 'package:dartz/dartz.dart';
import 'package:sha_admin/03_domain/auth/models/login_model.dart';

import '../../05_core/failure/main_failure.dart';

abstract class IAuthRepo {
  Future<Either<MainFailure, LoginModel>> login({
    required String pswd,
    required String username,
  });
}
