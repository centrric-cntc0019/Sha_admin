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
  $Res call({String? categoryId, ApiResponse<dynamic> result});

  $ApiResponseCopyWith<dynamic, $Res> get result;
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, $Res> get result {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
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
  $Res call({String? categoryId, ApiResponse<dynamic> result});

  @override
  $ApiResponseCopyWith<dynamic, $Res> get result;
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
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.categoryId, required this.result});

  @override
  final String? categoryId;
  @override
  final ApiResponse<dynamic> result;

  @override
  String toString() {
    return 'ProductState(categoryId: $categoryId, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ProductState {
  const factory _Initial(
      {final String? categoryId,
      required final ApiResponse<dynamic> result}) = _$_Initial;

  @override
  String? get categoryId;
  @override
  ApiResponse<dynamic> get result;
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
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
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
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
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
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
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
    required TResult Function(int? pageNo, String? searchKey, String categoryId)
        getProductListByCategory,
  }) {
    return getProductListByCategory(pageNo, searchKey, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
  }) {
    return getProductListByCategory?.call(pageNo, searchKey, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int? pageNo, String? searchKey, String categoryId)?
        getProductListByCategory,
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
    required TResult Function(_GetProductListByCategory value)
        getProductListByCategory,
  }) {
    return getProductListByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_GetProductListByCategory value)?
        getProductListByCategory,
  }) {
    return getProductListByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_GetProductListByCategory value)? getProductListByCategory,
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
