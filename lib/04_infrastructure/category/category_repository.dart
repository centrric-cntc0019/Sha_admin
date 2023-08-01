import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_base_model.dart';

import '../../03_domain/di/injection.dart';
import '../../05_core/utils/api_endpoints.dart';
import '../../05_core/failure/main_failure.dart';
import '../../05_core/services/dio_services.dart';
import '../../03_domain/category/i_category_repo.dart';

@LazySingleton(as: ICategoryRepo)
class CategoryRepository implements ICategoryRepo {
  @override
  Future<Either<MainFailure, CategoryBaseModel>> getCategory(
      {int page = 1}) async {
    String url = ApiEndPoints.categoryListEndPoint;
    url = "$url/?page=1&limit=40";
    final response = await getIt<DioServices>().request(
      url: url,
      method: 'GET',
      authenticated: true,
    );

    return response.fold(
      (l) => Left(l),
      (data) => Right(CategoryBaseModel.fromJson(data.data)),
    );
  }
}
