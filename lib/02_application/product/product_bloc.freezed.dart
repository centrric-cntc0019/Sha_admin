// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  String? get categoryId => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get result => throw _privateConstructorUsedError;
  dynamic get searchEnabled => throw _privateConstructorUsedError;
  ImagePickerModel? get productImage => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get allProducts => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get editProductRes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {String? categoryId,
      ApiResponse<dynamic> result,
      dynamic searchEnabled,
      ImagePickerModel? productImage,
      ApiResponse<dynamic> allProducts,
      ApiResponse<dynamic> editProductRes});

  $ApiResponseCopyWith<dynamic, $Res> get result;
  $ApiResponseCopyWith<dynamic, $Res> get allProducts;
  $ApiResponseCopyWith<dynamic, $Res> get editProductRes;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? result = null,
    Object? searchEnabled = freezed,
    Object? productImage = freezed,
    Object? allProducts = null,
    Object? editProductRes = null,
  }) {
    return _then(_value.copyWith(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      searchEnabled: freezed == searchEnabled
          ? _value.searchEnabled
          : searchEnabled // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
      allProducts: null == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      editProductRes: null == editProductRes
          ? _value.editProductRes
          : editProductRes // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, $Res> get result {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, $Res> get allProducts {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.allProducts, (value) {
      return _then(_value.copyWith(allProducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, $Res> get editProductRes {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.editProductRes, (value) {
      return _then(_value.copyWith(editProductRes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? categoryId,
      ApiResponse<dynamic> result,
      dynamic searchEnabled,
      ImagePickerModel? productImage,
      ApiResponse<dynamic> allProducts,
      ApiResponse<dynamic> editProductRes});

  @override
  $ApiResponseCopyWith<dynamic, $Res> get result;
  @override
  $ApiResponseCopyWith<dynamic, $Res> get allProducts;
  @override
  $ApiResponseCopyWith<dynamic, $Res> get editProductRes;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? result = null,
    Object? searchEnabled = freezed,
    Object? productImage = freezed,
    Object? allProducts = null,
    Object? editProductRes = null,
  }) {
    return _then(_$_Initial(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      searchEnabled:
          freezed == searchEnabled ? _value.searchEnabled! : searchEnabled,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
      allProducts: null == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      editProductRes: null == editProductRes
          ? _value.editProductRes
          : editProductRes // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.categoryId,
      required this.result,
      this.searchEnabled = false,
      this.productImage,
      required this.allProducts,
      required this.editProductRes});

  @override
  final String? categoryId;
  @override
  final ApiResponse<dynamic> result;
  @override
  @JsonKey()
  final dynamic searchEnabled;
  @override
  final ImagePickerModel? productImage;
  @override
  final ApiResponse<dynamic> allProducts;
  @override
  final ApiResponse<dynamic> editProductRes;

  @override
  String toString() {
    return 'ProductState(categoryId: $categoryId, result: $result, searchEnabled: $searchEnabled, productImage: $productImage, allProducts: $allProducts, editProductRes: $editProductRes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other.searchEnabled, searchEnabled) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.allProducts, allProducts) ||
                other.allProducts == allProducts) &&
            (identical(other.editProductRes, editProductRes) ||
                other.editProductRes == editProductRes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      result,
      const DeepCollectionEquality().hash(searchEnabled),
      productImage,
      allProducts,
      editProductRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ProductState {
  const factory _Initial(
      {final String? categoryId,
      required final ApiResponse<dynamic> result,
      final dynamic searchEnabled,
      final ImagePickerModel? productImage,
      required final ApiResponse<dynamic> allProducts,
      required final ApiResponse<dynamic> editProductRes}) = _$_Initial;

  @override
  String? get categoryId;
  @override
  ApiResponse<dynamic> get result;
  @override
  dynamic get searchEnabled;
  @override
  ImagePickerModel? get productImage;
  @override
  ApiResponse<dynamic> get allProducts;
  @override
  ApiResponse<dynamic> get editProductRes;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'ProductEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ProductEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'ProductEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ProductEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_GetProductListByCategoryCopyWith<$Res> {
  factory _$$_GetProductListByCategoryCopyWith(
          _$_GetProductListByCategory value,
          $Res Function(_$_GetProductListByCategory) then) =
      __$$_GetProductListByCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNo, String? searchKey, String categoryId});
}

/// @nodoc
class __$$_GetProductListByCategoryCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProductListByCategory>
    implements _$$_GetProductListByCategoryCopyWith<$Res> {
  __$$_GetProductListByCategoryCopyWithImpl(_$_GetProductListByCategory _value,
      $Res Function(_$_GetProductListByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = freezed,
    Object? searchKey = freezed,
    Object? categoryId = null,
  }) {
    return _then(_$_GetProductListByCategory(
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetProductListByCategory implements _GetProductListByCategory {
  const _$_GetProductListByCategory(
      {this.pageNo, this.searchKey, required this.categoryId});

  @override
  final int? pageNo;
  @override
  final String? searchKey;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'ProductEvent.getProductListByCategory(pageNo: $pageNo, searchKey: $searchKey, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductListByCategory &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNo, searchKey, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductListByCategoryCopyWith<_$_GetProductListByCategory>
      get copyWith => __$$_GetProductListByCategoryCopyWithImpl<
          _$_GetProductListByCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return getProductListByCategory(pageNo, searchKey, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return getProductListByCategory?.call(pageNo, searchKey, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (getProductListByCategory != null) {
      return getProductListByCategory(pageNo, searchKey, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return getProductListByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return getProductListByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (getProductListByCategory != null) {
      return getProductListByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductListByCategory implements ProductEvent {
  const factory _GetProductListByCategory(
      {final int? pageNo,
      final String? searchKey,
      required final String categoryId}) = _$_GetProductListByCategory;

  int? get pageNo;
  String? get searchKey;
  String get categoryId;
  @JsonKey(ignore: true)
  _$$_GetProductListByCategoryCopyWith<_$_GetProductListByCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllProductListCopyWith<$Res> {
  factory _$$_GetAllProductListCopyWith(_$_GetAllProductList value,
          $Res Function(_$_GetAllProductList) then) =
      __$$_GetAllProductListCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNo, String? searchKey});
}

/// @nodoc
class __$$_GetAllProductListCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetAllProductList>
    implements _$$_GetAllProductListCopyWith<$Res> {
  __$$_GetAllProductListCopyWithImpl(
      _$_GetAllProductList _value, $Res Function(_$_GetAllProductList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_$_GetAllProductList(
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetAllProductList implements _GetAllProductList {
  const _$_GetAllProductList({this.pageNo, this.searchKey});

  @override
  final int? pageNo;
  @override
  final String? searchKey;

  @override
  String toString() {
    return 'ProductEvent.getAllProductList(pageNo: $pageNo, searchKey: $searchKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllProductList &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNo, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllProductListCopyWith<_$_GetAllProductList> get copyWith =>
      __$$_GetAllProductListCopyWithImpl<_$_GetAllProductList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return getAllProductList(pageNo, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return getAllProductList?.call(pageNo, searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (getAllProductList != null) {
      return getAllProductList(pageNo, searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return getAllProductList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return getAllProductList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (getAllProductList != null) {
      return getAllProductList(this);
    }
    return orElse();
  }
}

abstract class _GetAllProductList implements ProductEvent {
  const factory _GetAllProductList(
      {final int? pageNo, final String? searchKey}) = _$_GetAllProductList;

  int? get pageNo;
  String? get searchKey;
  @JsonKey(ignore: true)
  _$$_GetAllProductListCopyWith<_$_GetAllProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchBarVisibilityCopyWith<$Res> {
  factory _$$_SearchBarVisibilityCopyWith(_$_SearchBarVisibility value,
          $Res Function(_$_SearchBarVisibility) then) =
      __$$_SearchBarVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchBarVisibilityCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_SearchBarVisibility>
    implements _$$_SearchBarVisibilityCopyWith<$Res> {
  __$$_SearchBarVisibilityCopyWithImpl(_$_SearchBarVisibility _value,
      $Res Function(_$_SearchBarVisibility) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchBarVisibility implements _SearchBarVisibility {
  const _$_SearchBarVisibility();

  @override
  String toString() {
    return 'ProductEvent.searchBarVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchBarVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return searchBarVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return searchBarVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (searchBarVisibility != null) {
      return searchBarVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return searchBarVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return searchBarVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (searchBarVisibility != null) {
      return searchBarVisibility(this);
    }
    return orElse();
  }
}

abstract class _SearchBarVisibility implements ProductEvent {
  const factory _SearchBarVisibility() = _$_SearchBarVisibility;
}

/// @nodoc
abstract class _$$_EditProductCopyWith<$Res> {
  factory _$$_EditProductCopyWith(
          _$_EditProduct value, $Res Function(_$_EditProduct) then) =
      __$$_EditProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? categoryUuid,
      String productUuid,
      bool fromAllProduct,
      BuildContext context});
}

/// @nodoc
class __$$_EditProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_EditProduct>
    implements _$$_EditProductCopyWith<$Res> {
  __$$_EditProductCopyWithImpl(
      _$_EditProduct _value, $Res Function(_$_EditProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryUuid = freezed,
    Object? productUuid = null,
    Object? fromAllProduct = null,
    Object? context = null,
  }) {
    return _then(_$_EditProduct(
      categoryUuid: freezed == categoryUuid
          ? _value.categoryUuid
          : categoryUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      productUuid: null == productUuid
          ? _value.productUuid
          : productUuid // ignore: cast_nullable_to_non_nullable
              as String,
      fromAllProduct: null == fromAllProduct
          ? _value.fromAllProduct
          : fromAllProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_EditProduct implements _EditProduct {
  const _$_EditProduct(
      {this.categoryUuid,
      required this.productUuid,
      required this.fromAllProduct,
      required this.context});

  @override
  final String? categoryUuid;
  @override
  final String productUuid;
  @override
  final bool fromAllProduct;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.editProduct(categoryUuid: $categoryUuid, productUuid: $productUuid, fromAllProduct: $fromAllProduct, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProduct &&
            (identical(other.categoryUuid, categoryUuid) ||
                other.categoryUuid == categoryUuid) &&
            (identical(other.productUuid, productUuid) ||
                other.productUuid == productUuid) &&
            (identical(other.fromAllProduct, fromAllProduct) ||
                other.fromAllProduct == fromAllProduct) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, categoryUuid, productUuid, fromAllProduct, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProductCopyWith<_$_EditProduct> get copyWith =>
      __$$_EditProductCopyWithImpl<_$_EditProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return editProduct(categoryUuid, productUuid, fromAllProduct, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return editProduct?.call(
        categoryUuid, productUuid, fromAllProduct, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(categoryUuid, productUuid, fromAllProduct, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return editProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return editProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(this);
    }
    return orElse();
  }
}

abstract class _EditProduct implements ProductEvent {
  const factory _EditProduct(
      {final String? categoryUuid,
      required final String productUuid,
      required final bool fromAllProduct,
      required final BuildContext context}) = _$_EditProduct;

  String? get categoryUuid;
  String get productUuid;
  bool get fromAllProduct;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_EditProductCopyWith<_$_EditProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickProductImageCopyWith<$Res> {
  factory _$$_PickProductImageCopyWith(
          _$_PickProductImage value, $Res Function(_$_PickProductImage) then) =
      __$$_PickProductImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImagePickerModel? image});
}

/// @nodoc
class __$$_PickProductImageCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_PickProductImage>
    implements _$$_PickProductImageCopyWith<$Res> {
  __$$_PickProductImageCopyWithImpl(
      _$_PickProductImage _value, $Res Function(_$_PickProductImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_PickProductImage(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
    ));
  }
}

/// @nodoc

class _$_PickProductImage implements _PickProductImage {
  const _$_PickProductImage({this.image});

  @override
  final ImagePickerModel? image;

  @override
  String toString() {
    return 'ProductEvent.pickProductImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickProductImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickProductImageCopyWith<_$_PickProductImage> get copyWith =>
      __$$_PickProductImageCopyWithImpl<_$_PickProductImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() reset,
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
    required TResult Function(int? pageNo, String? searchKey) getAllProductList,
    required TResult Function() searchBarVisibility,
    required TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)
        editProduct,
    required TResult Function(ImagePickerModel? image) pickProductImage,
  }) {
    return pickProductImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? reset,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult? Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult? Function()? searchBarVisibility,
    TResult? Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult? Function(ImagePickerModel? image)? pickProductImage,
  }) {
    return pickProductImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? reset,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    TResult Function(int? pageNo, String? searchKey)? getAllProductList,
    TResult Function()? searchBarVisibility,
    TResult Function(String? categoryUuid, String productUuid,
            bool fromAllProduct, BuildContext context)?
        editProduct,
    TResult Function(ImagePickerModel? image)? pickProductImage,
    required TResult orElse(),
  }) {
    if (pickProductImage != null) {
      return pickProductImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
    required TResult Function(_GetAllProductList value) getAllProductList,
    required TResult Function(_SearchBarVisibility value) searchBarVisibility,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_PickProductImage value) pickProductImage,
  }) {
    return pickProductImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
    TResult? Function(_GetAllProductList value)? getAllProductList,
    TResult? Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_PickProductImage value)? pickProductImage,
  }) {
    return pickProductImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
    TResult Function(_GetAllProductList value)? getAllProductList,
    TResult Function(_SearchBarVisibility value)? searchBarVisibility,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_PickProductImage value)? pickProductImage,
    required TResult orElse(),
  }) {
    if (pickProductImage != null) {
      return pickProductImage(this);
    }
    return orElse();
  }
}

abstract class _PickProductImage implements ProductEvent {
  const factory _PickProductImage({final ImagePickerModel? image}) =
      _$_PickProductImage;

  ImagePickerModel? get image;
  @JsonKey(ignore: true)
  _$$_PickProductImageCopyWith<_$_PickProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}
