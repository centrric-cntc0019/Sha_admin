// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryState {
  TextEditingController get addCatCtr => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get result => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get resultAddCategory =>
      throw _privateConstructorUsedError;
  ImagePickerModel? get categoryImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
  @useResult
  $Res call(
      {TextEditingController addCatCtr,
      ApiResponse<dynamic> result,
      ApiResponse<dynamic> resultAddCategory,
      ImagePickerModel? categoryImage});

  $ApiResponseCopyWith<dynamic, $Res> get result;
  $ApiResponseCopyWith<dynamic, $Res> get resultAddCategory;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCatCtr = null,
    Object? result = null,
    Object? resultAddCategory = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_value.copyWith(
      addCatCtr: null == addCatCtr
          ? _value.addCatCtr
          : addCatCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      resultAddCategory: null == resultAddCategory
          ? _value.resultAddCategory
          : resultAddCategory // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
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
  $ApiResponseCopyWith<dynamic, $Res> get resultAddCategory {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.resultAddCategory,
        (value) {
      return _then(_value.copyWith(resultAddCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController addCatCtr,
      ApiResponse<dynamic> result,
      ApiResponse<dynamic> resultAddCategory,
      ImagePickerModel? categoryImage});

  @override
  $ApiResponseCopyWith<dynamic, $Res> get result;
  @override
  $ApiResponseCopyWith<dynamic, $Res> get resultAddCategory;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addCatCtr = null,
    Object? result = null,
    Object? resultAddCategory = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_$_Initial(
      addCatCtr: null == addCatCtr
          ? _value.addCatCtr
          : addCatCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      resultAddCategory: null == resultAddCategory
          ? _value.resultAddCategory
          : resultAddCategory // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.addCatCtr,
      required this.result,
      required this.resultAddCategory,
      this.categoryImage});

  @override
  final TextEditingController addCatCtr;
  @override
  final ApiResponse<dynamic> result;
  @override
  final ApiResponse<dynamic> resultAddCategory;
  @override
  final ImagePickerModel? categoryImage;

  @override
  String toString() {
    return 'CategoryState(addCatCtr: $addCatCtr, result: $result, resultAddCategory: $resultAddCategory, categoryImage: $categoryImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.addCatCtr, addCatCtr) ||
                other.addCatCtr == addCatCtr) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.resultAddCategory, resultAddCategory) ||
                other.resultAddCategory == resultAddCategory) &&
            (identical(other.categoryImage, categoryImage) ||
                other.categoryImage == categoryImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, addCatCtr, result, resultAddCategory, categoryImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CategoryState {
  const factory _Initial(
      {required final TextEditingController addCatCtr,
      required final ApiResponse<dynamic> result,
      required final ApiResponse<dynamic> resultAddCategory,
      final ImagePickerModel? categoryImage}) = _$_Initial;

  @override
  TextEditingController get addCatCtr;
  @override
  ApiResponse<dynamic> get result;
  @override
  ApiResponse<dynamic> get resultAddCategory;
  @override
  ImagePickerModel? get categoryImage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialEventCopyWith<$Res> {
  factory _$$_InitialEventCopyWith(
          _$_InitialEvent value, $Res Function(_$_InitialEvent) then) =
      __$$_InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialEventCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_InitialEvent>
    implements _$$_InitialEventCopyWith<$Res> {
  __$$_InitialEventCopyWithImpl(
      _$_InitialEvent _value, $Res Function(_$_InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'CategoryEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements CategoryEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class _$$_ResetCopyWith<$Res> {
  factory _$$_ResetCopyWith(_$_Reset value, $Res Function(_$_Reset) then) =
      __$$_ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_Reset>
    implements _$$_ResetCopyWith<$Res> {
  __$$_ResetCopyWithImpl(_$_Reset _value, $Res Function(_$_Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'CategoryEvent.reset()';
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
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
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
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CategoryEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$$_GetCategoryCopyWith<$Res> {
  factory _$$_GetCategoryCopyWith(
          _$_GetCategory value, $Res Function(_$_GetCategory) then) =
      __$$_GetCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_GetCategory>
    implements _$$_GetCategoryCopyWith<$Res> {
  __$$_GetCategoryCopyWithImpl(
      _$_GetCategory _value, $Res Function(_$_GetCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategory implements _GetCategory {
  const _$_GetCategory();

  @override
  String toString() {
    return 'CategoryEvent.getCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return getCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return getCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class _GetCategory implements CategoryEvent {
  const factory _GetCategory() = _$_GetCategory;
}

/// @nodoc
abstract class _$$_PickCategoryImageCopyWith<$Res> {
  factory _$$_PickCategoryImageCopyWith(_$_PickCategoryImage value,
          $Res Function(_$_PickCategoryImage) then) =
      __$$_PickCategoryImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImagePickerModel image});
}

/// @nodoc
class __$$_PickCategoryImageCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_PickCategoryImage>
    implements _$$_PickCategoryImageCopyWith<$Res> {
  __$$_PickCategoryImageCopyWithImpl(
      _$_PickCategoryImage _value, $Res Function(_$_PickCategoryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_PickCategoryImage(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel,
    ));
  }
}

/// @nodoc

class _$_PickCategoryImage implements _PickCategoryImage {
  const _$_PickCategoryImage({required this.image});

  @override
  final ImagePickerModel image;

  @override
  String toString() {
    return 'CategoryEvent.pickCategoryImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickCategoryImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickCategoryImageCopyWith<_$_PickCategoryImage> get copyWith =>
      __$$_PickCategoryImageCopyWithImpl<_$_PickCategoryImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return pickCategoryImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return pickCategoryImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) {
    if (pickCategoryImage != null) {
      return pickCategoryImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return pickCategoryImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return pickCategoryImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (pickCategoryImage != null) {
      return pickCategoryImage(this);
    }
    return orElse();
  }
}

abstract class _PickCategoryImage implements CategoryEvent {
  const factory _PickCategoryImage({required final ImagePickerModel image}) =
      _$_PickCategoryImage;

  ImagePickerModel get image;
  @JsonKey(ignore: true)
  _$$_PickCategoryImageCopyWith<_$_PickCategoryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCategoryCopyWith<$Res> {
  factory _$$_AddCategoryCopyWith(
          _$_AddCategory value, $Res Function(_$_AddCategory) then) =
      __$$_AddCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ImagePickerModel? image, String? categoryName, BuildContext context});
}

/// @nodoc
class __$$_AddCategoryCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_AddCategory>
    implements _$$_AddCategoryCopyWith<$Res> {
  __$$_AddCategoryCopyWithImpl(
      _$_AddCategory _value, $Res Function(_$_AddCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? categoryName = freezed,
    Object? context = null,
  }) {
    return _then(_$_AddCategory(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImagePickerModel?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_AddCategory implements _AddCategory {
  const _$_AddCategory({this.image, this.categoryName, required this.context});

  @override
  final ImagePickerModel? image;
  @override
  final String? categoryName;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CategoryEvent.addCategory(image: $image, categoryName: $categoryName, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCategory &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, categoryName, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      __$$_AddCategoryCopyWithImpl<_$_AddCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return addCategory(image, categoryName, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return addCategory?.call(image, categoryName, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(image, categoryName, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategory implements CategoryEvent {
  const factory _AddCategory(
      {final ImagePickerModel? image,
      final String? categoryName,
      required final BuildContext context}) = _$_AddCategory;

  ImagePickerModel? get image;
  String? get categoryName;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddCategoryCopyWith<_$_AddCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCategoryResetCopyWith<$Res> {
  factory _$$_AddCategoryResetCopyWith(
          _$_AddCategoryReset value, $Res Function(_$_AddCategoryReset) then) =
      __$$_AddCategoryResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddCategoryResetCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$_AddCategoryReset>
    implements _$$_AddCategoryResetCopyWith<$Res> {
  __$$_AddCategoryResetCopyWithImpl(
      _$_AddCategoryReset _value, $Res Function(_$_AddCategoryReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddCategoryReset implements _AddCategoryReset {
  const _$_AddCategoryReset();

  @override
  String toString() {
    return 'CategoryEvent.addCategoryReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddCategoryReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function() reset,
    required TResult Function() getCategory,
    required TResult Function(ImagePickerModel image) pickCategoryImage,
    required TResult Function(
            ImagePickerModel? image, String? categoryName, BuildContext context)
        addCategory,
    required TResult Function() addCategoryReset,
  }) {
    return addCategoryReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
    TResult? Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult? Function()? addCategoryReset,
  }) {
    return addCategoryReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    TResult Function(ImagePickerModel? image, String? categoryName,
            BuildContext context)?
        addCategory,
    TResult Function()? addCategoryReset,
    required TResult orElse(),
  }) {
    if (addCategoryReset != null) {
      return addCategoryReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
    required TResult Function(_AddCategory value) addCategory,
    required TResult Function(_AddCategoryReset value) addCategoryReset,
  }) {
    return addCategoryReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
    TResult? Function(_AddCategory value)? addCategory,
    TResult? Function(_AddCategoryReset value)? addCategoryReset,
  }) {
    return addCategoryReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
    TResult Function(_AddCategory value)? addCategory,
    TResult Function(_AddCategoryReset value)? addCategoryReset,
    required TResult orElse(),
  }) {
    if (addCategoryReset != null) {
      return addCategoryReset(this);
    }
    return orElse();
  }
}

abstract class _AddCategoryReset implements CategoryEvent {
  const factory _AddCategoryReset() = _$_AddCategoryReset;
}
