// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductBaseModel _$ProductBaseModelFromJson(Map<String, dynamic> json) {
  return _ProductBaseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductBaseModel {
  @JsonKey(name: "pagination")
  Pagination? get pagination => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ProductData>? get productList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBaseModelCopyWith<ProductBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBaseModelCopyWith<$Res> {
  factory $ProductBaseModelCopyWith(
          ProductBaseModel value, $Res Function(ProductBaseModel) then) =
      _$ProductBaseModelCopyWithImpl<$Res, ProductBaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "pagination") Pagination? pagination,
      @JsonKey(name: "data") List<ProductData>? productList});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ProductBaseModelCopyWithImpl<$Res, $Val extends ProductBaseModel>
    implements $ProductBaseModelCopyWith<$Res> {
  _$ProductBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? productList = freezed,
  }) {
    return _then(_value.copyWith(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductBaseModelCopyWith<$Res>
    implements $ProductBaseModelCopyWith<$Res> {
  factory _$$_ProductBaseModelCopyWith(
          _$_ProductBaseModel value, $Res Function(_$_ProductBaseModel) then) =
      __$$_ProductBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pagination") Pagination? pagination,
      @JsonKey(name: "data") List<ProductData>? productList});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ProductBaseModelCopyWithImpl<$Res>
    extends _$ProductBaseModelCopyWithImpl<$Res, _$_ProductBaseModel>
    implements _$$_ProductBaseModelCopyWith<$Res> {
  __$$_ProductBaseModelCopyWithImpl(
      _$_ProductBaseModel _value, $Res Function(_$_ProductBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = freezed,
    Object? productList = freezed,
  }) {
    return _then(_$_ProductBaseModel(
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      productList: freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductBaseModel implements _ProductBaseModel {
  _$_ProductBaseModel(
      {@JsonKey(name: "pagination") this.pagination,
      @JsonKey(name: "data") final List<ProductData>? productList})
      : _productList = productList;

  factory _$_ProductBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductBaseModelFromJson(json);

  @override
  @JsonKey(name: "pagination")
  final Pagination? pagination;
  final List<ProductData>? _productList;
  @override
  @JsonKey(name: "data")
  List<ProductData>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductBaseModel(pagination: $pagination, productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBaseModel &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination,
      const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductBaseModelCopyWith<_$_ProductBaseModel> get copyWith =>
      __$$_ProductBaseModelCopyWithImpl<_$_ProductBaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductBaseModelToJson(
      this,
    );
  }
}

abstract class _ProductBaseModel implements ProductBaseModel {
  factory _ProductBaseModel(
          {@JsonKey(name: "pagination") final Pagination? pagination,
          @JsonKey(name: "data") final List<ProductData>? productList}) =
      _$_ProductBaseModel;

  factory _ProductBaseModel.fromJson(Map<String, dynamic> json) =
      _$_ProductBaseModel.fromJson;

  @override
  @JsonKey(name: "pagination")
  Pagination? get pagination;
  @override
  @JsonKey(name: "data")
  List<ProductData>? get productList;
  @override
  @JsonKey(ignore: true)
  _$$_ProductBaseModelCopyWith<_$_ProductBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  @JsonKey(name: 'PurchaseDetails')
  PurchaseDetails? get purchaseDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'SalesDetails')
  SalesDetails? get salesDetails => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProductImage')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'PurchaseDescription')
  String? get purchaseDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsSold')
  bool? get isSold => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsPurchased')
  bool? get isPurchased => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuantityOnHand')
  int? get quantityOnHand => throw _privateConstructorUsedError;
  @JsonKey(name: "ProductImage_thumbnail")
  String? get productImageThumb => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'PurchaseDetails') PurchaseDetails? purchaseDetails,
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
      int productCount});

  $PurchaseDetailsCopyWith<$Res>? get purchaseDetails;
  $SalesDetailsCopyWith<$Res>? get salesDetails;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = freezed,
    Object? salesDetails = freezed,
    Object? uuid = freezed,
    Object? productImage = freezed,
    Object? description = freezed,
    Object? purchaseDescription = freezed,
    Object? name = freezed,
    Object? isSold = freezed,
    Object? isPurchased = freezed,
    Object? quantityOnHand = freezed,
    Object? productImageThumb = freezed,
    Object? productCount = null,
  }) {
    return _then(_value.copyWith(
      purchaseDetails: freezed == purchaseDetails
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as PurchaseDetails?,
      salesDetails: freezed == salesDetails
          ? _value.salesDetails
          : salesDetails // ignore: cast_nullable_to_non_nullable
              as SalesDetails?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDescription: freezed == purchaseDescription
          ? _value.purchaseDescription
          : purchaseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isSold: freezed == isSold
          ? _value.isSold
          : isSold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPurchased: freezed == isPurchased
          ? _value.isPurchased
          : isPurchased // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantityOnHand: freezed == quantityOnHand
          ? _value.quantityOnHand
          : quantityOnHand // ignore: cast_nullable_to_non_nullable
              as int?,
      productImageThumb: freezed == productImageThumb
          ? _value.productImageThumb
          : productImageThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseDetailsCopyWith<$Res>? get purchaseDetails {
    if (_value.purchaseDetails == null) {
      return null;
    }

    return $PurchaseDetailsCopyWith<$Res>(_value.purchaseDetails!, (value) {
      return _then(_value.copyWith(purchaseDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesDetailsCopyWith<$Res>? get salesDetails {
    if (_value.salesDetails == null) {
      return null;
    }

    return $SalesDetailsCopyWith<$Res>(_value.salesDetails!, (value) {
      return _then(_value.copyWith(salesDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$_ProductDataCopyWith(
          _$_ProductData value, $Res Function(_$_ProductData) then) =
      __$$_ProductDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'PurchaseDetails') PurchaseDetails? purchaseDetails,
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
      int productCount});

  @override
  $PurchaseDetailsCopyWith<$Res>? get purchaseDetails;
  @override
  $SalesDetailsCopyWith<$Res>? get salesDetails;
}

/// @nodoc
class __$$_ProductDataCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$_ProductData>
    implements _$$_ProductDataCopyWith<$Res> {
  __$$_ProductDataCopyWithImpl(
      _$_ProductData _value, $Res Function(_$_ProductData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseDetails = freezed,
    Object? salesDetails = freezed,
    Object? uuid = freezed,
    Object? productImage = freezed,
    Object? description = freezed,
    Object? purchaseDescription = freezed,
    Object? name = freezed,
    Object? isSold = freezed,
    Object? isPurchased = freezed,
    Object? quantityOnHand = freezed,
    Object? productImageThumb = freezed,
    Object? productCount = null,
  }) {
    return _then(_$_ProductData(
      purchaseDetails: freezed == purchaseDetails
          ? _value.purchaseDetails
          : purchaseDetails // ignore: cast_nullable_to_non_nullable
              as PurchaseDetails?,
      salesDetails: freezed == salesDetails
          ? _value.salesDetails
          : salesDetails // ignore: cast_nullable_to_non_nullable
              as SalesDetails?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDescription: freezed == purchaseDescription
          ? _value.purchaseDescription
          : purchaseDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isSold: freezed == isSold
          ? _value.isSold
          : isSold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPurchased: freezed == isPurchased
          ? _value.isPurchased
          : isPurchased // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantityOnHand: freezed == quantityOnHand
          ? _value.quantityOnHand
          : quantityOnHand // ignore: cast_nullable_to_non_nullable
              as int?,
      productImageThumb: freezed == productImageThumb
          ? _value.productImageThumb
          : productImageThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductData implements _ProductData {
  _$_ProductData(
      {@JsonKey(name: 'PurchaseDetails') this.purchaseDetails,
      @JsonKey(name: 'SalesDetails') this.salesDetails,
      this.uuid,
      @JsonKey(name: 'ProductImage') this.productImage,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'PurchaseDescription') this.purchaseDescription,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'IsSold') this.isSold,
      @JsonKey(name: 'IsPurchased') this.isPurchased,
      @JsonKey(name: 'QuantityOnHand') this.quantityOnHand,
      @JsonKey(name: "ProductImage_thumbnail") this.productImageThumb,
      this.productCount = 0});

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataFromJson(json);

  @override
  @JsonKey(name: 'PurchaseDetails')
  final PurchaseDetails? purchaseDetails;
  @override
  @JsonKey(name: 'SalesDetails')
  final SalesDetails? salesDetails;
  @override
  final String? uuid;
  @override
  @JsonKey(name: 'ProductImage')
  final String? productImage;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'PurchaseDescription')
  final String? purchaseDescription;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'IsSold')
  final bool? isSold;
  @override
  @JsonKey(name: 'IsPurchased')
  final bool? isPurchased;
  @override
  @JsonKey(name: 'QuantityOnHand')
  final int? quantityOnHand;
  @override
  @JsonKey(name: "ProductImage_thumbnail")
  final String? productImageThumb;
  @override
  @JsonKey()
  final int productCount;

  @override
  String toString() {
    return 'ProductData(purchaseDetails: $purchaseDetails, salesDetails: $salesDetails, uuid: $uuid, productImage: $productImage, description: $description, purchaseDescription: $purchaseDescription, name: $name, isSold: $isSold, isPurchased: $isPurchased, quantityOnHand: $quantityOnHand, productImageThumb: $productImageThumb, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductData &&
            (identical(other.purchaseDetails, purchaseDetails) ||
                other.purchaseDetails == purchaseDetails) &&
            (identical(other.salesDetails, salesDetails) ||
                other.salesDetails == salesDetails) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.purchaseDescription, purchaseDescription) ||
                other.purchaseDescription == purchaseDescription) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSold, isSold) || other.isSold == isSold) &&
            (identical(other.isPurchased, isPurchased) ||
                other.isPurchased == isPurchased) &&
            (identical(other.quantityOnHand, quantityOnHand) ||
                other.quantityOnHand == quantityOnHand) &&
            (identical(other.productImageThumb, productImageThumb) ||
                other.productImageThumb == productImageThumb) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseDetails,
      salesDetails,
      uuid,
      productImage,
      description,
      purchaseDescription,
      name,
      isSold,
      isPurchased,
      quantityOnHand,
      productImageThumb,
      productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      __$$_ProductDataCopyWithImpl<_$_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  factory _ProductData(
      {@JsonKey(name: 'PurchaseDetails') final PurchaseDetails? purchaseDetails,
      @JsonKey(name: 'SalesDetails') final SalesDetails? salesDetails,
      final String? uuid,
      @JsonKey(name: 'ProductImage') final String? productImage,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'PurchaseDescription') final String? purchaseDescription,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'IsSold') final bool? isSold,
      @JsonKey(name: 'IsPurchased') final bool? isPurchased,
      @JsonKey(name: 'QuantityOnHand') final int? quantityOnHand,
      @JsonKey(name: "ProductImage_thumbnail") final String? productImageThumb,
      final int productCount}) = _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  @JsonKey(name: 'PurchaseDetails')
  PurchaseDetails? get purchaseDetails;
  @override
  @JsonKey(name: 'SalesDetails')
  SalesDetails? get salesDetails;
  @override
  String? get uuid;
  @override
  @JsonKey(name: 'ProductImage')
  String? get productImage;
  @override
  @JsonKey(name: 'Description')
  String? get description;
  @override
  @JsonKey(name: 'PurchaseDescription')
  String? get purchaseDescription;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'IsSold')
  bool? get isSold;
  @override
  @JsonKey(name: 'IsPurchased')
  bool? get isPurchased;
  @override
  @JsonKey(name: 'QuantityOnHand')
  int? get quantityOnHand;
  @override
  @JsonKey(name: "ProductImage_thumbnail")
  String? get productImageThumb;
  @override
  int get productCount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataCopyWith<_$_ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseDetails _$PurchaseDetailsFromJson(Map<String, dynamic> json) {
  return _PurchaseDetails.fromJson(json);
}

/// @nodoc
mixin _$PurchaseDetails {
  @JsonKey(name: 'UnitPrice')
  String? get unitPrice => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountCode')
  String? get accountCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseDetailsCopyWith<PurchaseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseDetailsCopyWith<$Res> {
  factory $PurchaseDetailsCopyWith(
          PurchaseDetails value, $Res Function(PurchaseDetails) then) =
      _$PurchaseDetailsCopyWithImpl<$Res, PurchaseDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode});
}

/// @nodoc
class _$PurchaseDetailsCopyWithImpl<$Res, $Val extends PurchaseDetails>
    implements $PurchaseDetailsCopyWith<$Res> {
  _$PurchaseDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitPrice = freezed,
    Object? uuid = freezed,
    Object? accountCode = freezed,
  }) {
    return _then(_value.copyWith(
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseDetailsCopyWith<$Res>
    implements $PurchaseDetailsCopyWith<$Res> {
  factory _$$_PurchaseDetailsCopyWith(
          _$_PurchaseDetails value, $Res Function(_$_PurchaseDetails) then) =
      __$$_PurchaseDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode});
}

/// @nodoc
class __$$_PurchaseDetailsCopyWithImpl<$Res>
    extends _$PurchaseDetailsCopyWithImpl<$Res, _$_PurchaseDetails>
    implements _$$_PurchaseDetailsCopyWith<$Res> {
  __$$_PurchaseDetailsCopyWithImpl(
      _$_PurchaseDetails _value, $Res Function(_$_PurchaseDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitPrice = freezed,
    Object? uuid = freezed,
    Object? accountCode = freezed,
  }) {
    return _then(_$_PurchaseDetails(
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseDetails implements _PurchaseDetails {
  _$_PurchaseDetails(
      {@JsonKey(name: 'UnitPrice') this.unitPrice,
      this.uuid,
      @JsonKey(name: 'AccountCode') this.accountCode});

  factory _$_PurchaseDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseDetailsFromJson(json);

  @override
  @JsonKey(name: 'UnitPrice')
  final String? unitPrice;
  @override
  final String? uuid;
  @override
  @JsonKey(name: 'AccountCode')
  final String? accountCode;

  @override
  String toString() {
    return 'PurchaseDetails(unitPrice: $unitPrice, uuid: $uuid, accountCode: $accountCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseDetails &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unitPrice, uuid, accountCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseDetailsCopyWith<_$_PurchaseDetails> get copyWith =>
      __$$_PurchaseDetailsCopyWithImpl<_$_PurchaseDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseDetailsToJson(
      this,
    );
  }
}

abstract class _PurchaseDetails implements PurchaseDetails {
  factory _PurchaseDetails(
          {@JsonKey(name: 'UnitPrice') final String? unitPrice,
          final String? uuid,
          @JsonKey(name: 'AccountCode') final String? accountCode}) =
      _$_PurchaseDetails;

  factory _PurchaseDetails.fromJson(Map<String, dynamic> json) =
      _$_PurchaseDetails.fromJson;

  @override
  @JsonKey(name: 'UnitPrice')
  String? get unitPrice;
  @override
  String? get uuid;
  @override
  @JsonKey(name: 'AccountCode')
  String? get accountCode;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseDetailsCopyWith<_$_PurchaseDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesDetails _$SalesDetailsFromJson(Map<String, dynamic> json) {
  return _SalesDetails.fromJson(json);
}

/// @nodoc
mixin _$SalesDetails {
  @JsonKey(name: 'UnitPrice')
  String? get unitPrice => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'AccountCode')
  String? get accountCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesDetailsCopyWith<SalesDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesDetailsCopyWith<$Res> {
  factory $SalesDetailsCopyWith(
          SalesDetails value, $Res Function(SalesDetails) then) =
      _$SalesDetailsCopyWithImpl<$Res, SalesDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode});
}

/// @nodoc
class _$SalesDetailsCopyWithImpl<$Res, $Val extends SalesDetails>
    implements $SalesDetailsCopyWith<$Res> {
  _$SalesDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitPrice = freezed,
    Object? uuid = freezed,
    Object? accountCode = freezed,
  }) {
    return _then(_value.copyWith(
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesDetailsCopyWith<$Res>
    implements $SalesDetailsCopyWith<$Res> {
  factory _$$_SalesDetailsCopyWith(
          _$_SalesDetails value, $Res Function(_$_SalesDetails) then) =
      __$$_SalesDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UnitPrice') String? unitPrice,
      String? uuid,
      @JsonKey(name: 'AccountCode') String? accountCode});
}

/// @nodoc
class __$$_SalesDetailsCopyWithImpl<$Res>
    extends _$SalesDetailsCopyWithImpl<$Res, _$_SalesDetails>
    implements _$$_SalesDetailsCopyWith<$Res> {
  __$$_SalesDetailsCopyWithImpl(
      _$_SalesDetails _value, $Res Function(_$_SalesDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitPrice = freezed,
    Object? uuid = freezed,
    Object? accountCode = freezed,
  }) {
    return _then(_$_SalesDetails(
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      accountCode: freezed == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesDetails implements _SalesDetails {
  _$_SalesDetails(
      {@JsonKey(name: 'UnitPrice') this.unitPrice,
      this.uuid,
      @JsonKey(name: 'AccountCode') this.accountCode});

  factory _$_SalesDetails.fromJson(Map<String, dynamic> json) =>
      _$$_SalesDetailsFromJson(json);

  @override
  @JsonKey(name: 'UnitPrice')
  final String? unitPrice;
  @override
  final String? uuid;
  @override
  @JsonKey(name: 'AccountCode')
  final String? accountCode;

  @override
  String toString() {
    return 'SalesDetails(unitPrice: $unitPrice, uuid: $uuid, accountCode: $accountCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesDetails &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unitPrice, uuid, accountCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesDetailsCopyWith<_$_SalesDetails> get copyWith =>
      __$$_SalesDetailsCopyWithImpl<_$_SalesDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesDetailsToJson(
      this,
    );
  }
}

abstract class _SalesDetails implements SalesDetails {
  factory _SalesDetails(
          {@JsonKey(name: 'UnitPrice') final String? unitPrice,
          final String? uuid,
          @JsonKey(name: 'AccountCode') final String? accountCode}) =
      _$_SalesDetails;

  factory _SalesDetails.fromJson(Map<String, dynamic> json) =
      _$_SalesDetails.fromJson;

  @override
  @JsonKey(name: 'UnitPrice')
  String? get unitPrice;
  @override
  String? get uuid;
  @override
  @JsonKey(name: 'AccountCode')
  String? get accountCode;
  @override
  @JsonKey(ignore: true)
  _$$_SalesDetailsCopyWith<_$_SalesDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "total_records")
  int? get totalRecords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "total_records") int? totalRecords});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalRecords = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination value, $Res Function(_$_Pagination) then) =
      __$$_PaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "total_records") int? totalRecords});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$_Pagination>
    implements _$$_PaginationCopyWith<$Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination _value, $Res Function(_$_Pagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalRecords = freezed,
  }) {
    return _then(_$_Pagination(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecords: freezed == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pagination implements _Pagination {
  _$_Pagination(
      {@JsonKey(name: "page") this.page,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "total_records") this.totalRecords});

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationFromJson(json);

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "total_records")
  final int? totalRecords;

  @override
  String toString() {
    return 'Pagination(page: $page, limit: $limit, totalRecords: $totalRecords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, totalRecords);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      __$$_PaginationCopyWithImpl<_$_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  factory _Pagination(
      {@JsonKey(name: "page") final int? page,
      @JsonKey(name: "limit") final int? limit,
      @JsonKey(name: "total_records") final int? totalRecords}) = _$_Pagination;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(name: "total_records")
  int? get totalRecords;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}
