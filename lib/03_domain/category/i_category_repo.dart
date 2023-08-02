import 'package:dartz/dartz.dart';

import '../../05_core/failure/main_failure.dart';
import '../../05_core/services/image_picker.dart';
import 'models/category_list/category_base_model.dart';

abstract class ICategoryRepo {
  Future<Either<MainFailure, CategoryBaseModel>> getCategory({int page = 1});

  Future<Either<MainFailure, CategoryBaseModel>> addCategoryApi(
      {required ImagePickerModel image, required String categoryName});
}
