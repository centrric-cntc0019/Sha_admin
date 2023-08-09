// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'product_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductBaseModel _$$_ProductBaseModelFromJson(Map<String, dynamic> json) =>
    _$_ProductBaseModel(
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      productList: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductBaseModelToJson(_$_ProductBaseModel instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'data': instance.productList,
    };

_$_ProductData _$$_ProductDataFromJson(Map<String, dynamic> json) =>
    _$_ProductData(
      purchaseDetails: json['PurchaseDetails'] == null
          ? null
          : PurchaseDetails.fromJson(
              json['PurchaseDetails'] as Map<String, dynamic>),
      productCategory: json['ProductCategory'] == null
          ? null
          : ProductCategory.fromJson(
              json['ProductCategory'] as Map<String, dynamic>),
      salesDetails: json['SalesDetails'] == null
          ? null
          : SalesDetails.fromJson(json['SalesDetails'] as Map<String, dynamic>),
      uuid: json['uuid'] as String?,
      productImage: json['ProductImage'] as String?,
      description: json['Description'] as String?,
      purchaseDescription: json['PurchaseDescription'] as String?,
      name: json['Name'] as String?,
      isSold: json['IsSold'] as bool?,
      isPurchased: json['IsPurchased'] as bool?,
      quantityOnHand: json['QuantityOnHand'] as int?,
      productImageThumb: json['ProductImage_thumbnail'] as String?,
      productCount: json['productCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'PurchaseDetails': instance.purchaseDetails,
      'ProductCategory': instance.productCategory,
      'SalesDetails': instance.salesDetails,
      'uuid': instance.uuid,
      'ProductImage': instance.productImage,
      'Description': instance.description,
      'PurchaseDescription': instance.purchaseDescription,
      'Name': instance.name,
      'IsSold': instance.isSold,
      'IsPurchased': instance.isPurchased,
      'QuantityOnHand': instance.quantityOnHand,
      'ProductImage_thumbnail': instance.productImageThumb,
      'productCount': instance.productCount,
    };

_$_PurchaseDetails _$$_PurchaseDetailsFromJson(Map<String, dynamic> json) =>
    _$_PurchaseDetails(
      unitPrice: json['UnitPrice'] as String?,
      uuid: json['uuid'] as String?,
      accountCode: json['AccountCode'] as String?,
    );

Map<String, dynamic> _$$_PurchaseDetailsToJson(_$_PurchaseDetails instance) =>
    <String, dynamic>{
      'UnitPrice': instance.unitPrice,
      'uuid': instance.uuid,
      'AccountCode': instance.accountCode,
    };

_$_ProductCategory _$$_ProductCategoryFromJson(Map<String, dynamic> json) =>
    _$_ProductCategory(
      uuid: json['uuid'] as String?,
      categoryName: json['category_name'] as String?,
      categorImage: json['category_image'] as String?,
    );

Map<String, dynamic> _$$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'category_name': instance.categoryName,
      'category_image': instance.categorImage,
    };

_$_SalesDetails _$$_SalesDetailsFromJson(Map<String, dynamic> json) =>
    _$_SalesDetails(
      unitPrice: json['UnitPrice'] as String?,
      uuid: json['uuid'] as String?,
      accountCode: json['AccountCode'] as String?,
    );

Map<String, dynamic> _$$_SalesDetailsToJson(_$_SalesDetails instance) =>
    <String, dynamic>{
      'UnitPrice': instance.unitPrice,
      'uuid': instance.uuid,
      'AccountCode': instance.accountCode,
    };

_$_Pagination _$$_PaginationFromJson(Map<String, dynamic> json) =>
    _$_Pagination(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      totalRecords: json['total_records'] as int?,
    );

Map<String, dynamic> _$$_PaginationToJson(_$_Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total_records': instance.totalRecords,
    };
