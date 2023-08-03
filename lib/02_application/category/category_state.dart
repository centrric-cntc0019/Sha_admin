part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required TextEditingController addCatCtr,
    required ApiResponse result,
    required ApiResponse resultAddEditCategory,
    ImagePickerModel? categoryImage,
  }) = _Initial;
  factory CategoryState.initial() => CategoryState(
        addCatCtr: TextEditingController(),
        categoryImage: null,
        resultAddEditCategory: ApiResponse(),
        result: ApiResponse(),
      );
}
