import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_base_model.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_model.dart';
import 'package:sha_admin/05_core/utils/custom_print.dart';

import '../../03_domain/di/injection.dart';
import '../../05_core/services/image_picker.dart';
import '../../05_core/utils/api_endpoints.dart';
import '../../05_core/failure/main_failure.dart';
import '../../05_core/services/dio_services.dart';
import '../../03_domain/category/i_category_repo.dart';
import 'package:dio/dio.dart' as dio;

@LazySingleton(as: ICategoryRepo)
class CategoryRepository implements ICategoryRepo {
  @override
  Future<Either<MainFailure, CategoryBaseModel>> getCategory(
      {int page = 1}) async {
    customPrint('_InitialEvent3');

    String url = ApiEndPoints.categoryListEndPoint;
    url = "$url/?page=1&limit=40";
    final response = await DioServices().request(
      url: url,
      method: 'GET',
      authenticated: true,
    );

    return response.fold(
      (l) => Left(l),
      (data) => Right(CategoryBaseModel.fromJson(data.data)),
    );
  }

  @override
  Future<Either<MainFailure, CategoryModel>> addCategoryApi(
      {required ImagePickerModel image, required String categoryName}) async {
    String url = ApiEndPoints.addCategoryEndPoint;

    var data = {
      "category_name": categoryName,
      "category_image": await dio.MultipartFile.fromFile(
        image.imagePath!,
        filename: image.imageFileName,
      )
    };

    dio.FormData formData = dio.FormData.fromMap(data);
    final response = await getIt<DioServices>()
        .request(url: url, method: 'POST', data: formData, authenticated: true);

    return response.fold(
      (l) => Left(l),
      (data) => Right(CategoryModel.fromJson(data.data['data'])),
    );
  }

  @override
  Future<Either<MainFailure, CategoryModel>> editCategoryApi({
    required ImagePickerModel image,
    required String categoryName,
    required String categoryUUID,
  }) async {
    String url = ApiEndPoints.editCategoryEndPont;

    var data = {
      "category_name": categoryName,
      if (image.imagePath != null)
        "category_image": await dio.MultipartFile.fromFile(
          image.imagePath!,
          filename: image.imageFileName,
        )
    };

    dio.FormData formData = dio.FormData.fromMap(data);
    final response = await getIt<DioServices>().request(
        url: '$url/$categoryUUID/',
        method: 'PUT',
        data: formData,
        authenticated: true);

    return response.fold(
      (l) => Left(l),
      (data) => Right(CategoryModel.fromJson(data.data['data'])),
    );
  }
}
