// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_base_model.g.dart';
part 'product_base_model.freezed.dart';

@freezed
class ProductBaseModel with _$ProductBaseModel {
  factory ProductBaseModel({
    @JsonKey(name: "pagination") Pagination? pagination,
    @JsonKey(name: "data") List<ProductData>? productList,
  }) = _ProductBaseModel;

  factory ProductBaseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductBaseModelFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  factory ProductData({
    @JsonKey(name: 'PurchaseDetails') PurchaseDetails? purchaseDetails,
    @JsonKey(name: 'SalesDetails') SalesDetails? salesDetails,
    String? uuid,
    @JsonKey(name: 'ProductImage') String? productImage,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'PurchaseDescription') String? purchaseDescription,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'IsSold') bool? isSold,
    @JsonKey(name: 'IsPurchased') bool? isPurchased,
    @JsonKey(name: 'QuantityOnHand') int? quantityOnHand,
    @JsonKey(name: "ProductImage_thumbnail") String? productImageThumb,
    @Default(0) int productCount,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class PurchaseDetails with _$PurchaseDetails {
  factory PurchaseDetails(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode}) = _PurchaseDetails;

  factory PurchaseDetails.fromJson(Map<String, dynamic> json) =>
      _$PurchaseDetailsFromJson(json);
}

@freezed
class SalesDetails with _$SalesDetails {
  factory SalesDetails(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode}) = _SalesDetails;

  factory SalesDetails.fromJson(Map<String, dynamic> json) =>
      _$SalesDetailsFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  factory Pagination({
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "total_records") int? totalRecords,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
