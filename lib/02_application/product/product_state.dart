part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    String? categoryId,
    required ApiResponse result,
  }) = _Initial;
  factory ProductState.initial() => ProductState(
        categoryId: null,
        result: ApiResponse(),
      );
}
