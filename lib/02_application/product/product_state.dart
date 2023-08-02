part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    String? categoryId,
    required ApiResponse result,
    @Default(false) searchEnabled,
    ImagePickerModel? productImage,
    required ApiResponse allProducts,
    required ApiResponse editProductRes,
  }) = _Initial;
  factory ProductState.initial() => ProductState(
        categoryId: null,
        productImage: null,
        searchEnabled: false,
        result: ApiResponse(),
        allProducts: ApiResponse(),
        editProductRes: ApiResponse(),
      );
}
