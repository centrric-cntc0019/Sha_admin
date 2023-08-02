import 'package:dartz/dartz.dart';

import '../../05_core/failure/main_failure.dart';
import 'models/product/product_base_model.dart';

abstract class IProductRepo {
  Future<Either<MainFailure, ProductBaseModel>> getProductByCategory({
    int? page,
    String? searchKey,
    required String categoryId,
  });
  Future<Either<MainFailure, ProductBaseModel>> getAllProduct(
      {int? page, String? searchKey});
}
