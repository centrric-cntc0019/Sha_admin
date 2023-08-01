part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({required ApiResponse result}) = _Initial;
  factory CategoryState.initial() => CategoryState(result: ApiResponse());
}
