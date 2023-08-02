part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required TextEditingController addCatCtr,
    required ApiResponse result,
    required ApiResponse resultAddCategory,
    ImagePickerModel? categoryImage,
  }) = _Initial;
  factory CategoryState.initial() => CategoryState(
        addCatCtr: TextEditingController(),
        categoryImage: null,
        resultAddCategory: ApiResponse(),
        result: ApiResponse(),
      );
}
