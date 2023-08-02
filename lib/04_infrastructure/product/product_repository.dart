import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sha_admin/05_core/failure/main_failure.dart';
import 'package:sha_admin/03_domain/products/models/product/product_base_model.dart';

import '../../03_domain/di/injection.dart';
import '../../05_core/utils/api_endpoints.dart';
import '../../05_core/services/dio_services.dart';
import '../../03_domain/products/i_product_repo.dart';

@LazySingleton(as: IProductRepo)
class ProductRepository implements IProductRepo {
  @override
  Future<Either<MainFailure, ProductBaseModel>> getProductByCategory({
    int? page,
    String? searchKey,
    required String categoryId,
  }) async {
    var url = ApiEndPoints.productListEndPoint;
    url = '$url?category_uuids=$categoryId&page=${page ?? 1}&limit=10';
    if (searchKey != null) {
      url = "$url&keyword=$searchKey";
    }
    final response = await getIt<DioServices>().request(
      url: url,
      method: 'GET',
      authenticated: true,
    );

    return response.fold((l) => Left(l), (data) {
      return Right(ProductBaseModel.fromJson(data.data));
    });
  }

  @override
  Future<Either<MainFailure, ProductBaseModel>> getAllProduct({
    int? page,
    String? searchKey,
  }) async {
    var url = ApiEndPoints.productListEndPoint;
    url = '$url?page=${page ?? 1}&limit=10';
    if (searchKey != null) {
      url = "$url&keyword=$searchKey";
    }
    final response = await getIt<DioServices>().request(
      url: url,
      method: 'GET',
      authenticated: true,
    );

    return response.fold((l) => Left(l), (data) {
      return Right(ProductBaseModel.fromJson(data.data));
    });
  }
}
