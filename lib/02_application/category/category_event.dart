part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.initialEvent() = _InitialEvent;

  const factory CategoryEvent.reset() = _Reset;
  const factory CategoryEvent.getCategory() = _GetCategory;
  const factory CategoryEvent.pickCategoryImage(
      {required ImagePickerModel image}) = _PickCategoryImage;
  const factory CategoryEvent.addEditCategory(
      {ImagePickerModel? image,
      String? categoryName,
      String? categoryUUID,
      required EnumCategoryAddEdit enumCategoryAddEdit,
      required BuildContext context}) = _AddEditCategory;
  const factory CategoryEvent.addCategoryReset() = _AddCategoryReset;
}
