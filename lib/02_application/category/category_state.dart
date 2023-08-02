part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState(
      {required ApiResponse result,
      ImagePickerModel? categoryImage}) = _Initial;
  factory CategoryState.initial() => CategoryState(
        categoryImage: null,
        result: ApiResponse(),
      );
}
