part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.init() = _Init;
  const factory ProductEvent.reset() = _Reset;
  const factory ProductEvent.getProductListByCategory({
    int? pageNo,
    String? searchKey,
    required String categoryId,
  }) = _GetProductListByCategory;
  const factory ProductEvent.getAllProductList({
    int? pageNo,
    String? searchKey,
  }) = _GetAllProductList;
  const factory ProductEvent.searchBarVisibility() = _SearchBarVisibility;
  const factory ProductEvent.editProduct({
    String? categoryUuid,
    required String productUuid,
    required BuildContext context,
  }) = _EditProduct;
  const factory ProductEvent.pickProductImage({ImagePickerModel? image}) =
      _PickProductImage;
}
