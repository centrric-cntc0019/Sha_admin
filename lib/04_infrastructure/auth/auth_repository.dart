import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../03_domain/di/injection.dart';
import '../../03_domain/auth/i_auth_repo.dart';
import '../../05_core/utils/api_endpoints.dart';
import '../../05_core/failure/main_failure.dart';
import '../../05_core/services/shared_pref.dart';
import '../../05_core/services/dio_services.dart';
import '../../03_domain/auth/models/login_model.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepository implements IAuthRepo {
  @override
  Future<Either<MainFailure, LoginModel>> login({
    required String pswd,
    required String username,
  }) async {
    final response = await getIt<DioServices>().request(
      url: ApiEndPoints.loginEndPoint,
      method: "POST",
      data: {
        "password": pswd,
        "username": username,
      },
    );
    return response.fold(
      (l) => Left(l),
      (response) {
        final data = LoginModel.fromJson(response.data);
        getIt<CacheHelper>()
            .cacheData(key: "access_token", code: data.accessToken!);
        getIt<CacheHelper>()
            .cacheData(key: "refresh_token", code: data.refreshToken!);
        return Right(data);
      },
    );
  }
}
