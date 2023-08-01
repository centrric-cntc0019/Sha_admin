import 'package:dartz/dartz.dart';

import '../../05_core/failure/main_failure.dart';
import 'models/category_list/category_base_model.dart';

abstract class ICategoryRepo {
  Future<Either<MainFailure, CategoryBaseModel>> getCategory({int page = 1});
}
