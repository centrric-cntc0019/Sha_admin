part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.initialEvent() = _InitialEvent;

  const factory CategoryEvent.reset() = _Reset;
  const factory CategoryEvent.getCategory() = _GetCategory;
  const factory CategoryEvent.pickCategoryImage(
      {required ImagePickerModel image}) = _PickCategoryImage;
  const factory CategoryEvent.addCategory() = _AddCategory;
}
