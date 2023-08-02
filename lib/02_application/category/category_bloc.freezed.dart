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
  ApiResponse<dynamic> get result => throw _privateConstructorUsedError;
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
  $Res call({ApiResponse<dynamic> result, ImagePickerModel? categoryImage});

  $ApiResponseCopyWith<dynamic, $Res> get result;
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
    Object? result = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<dynamic> result, ImagePickerModel? categoryImage});

  @override
  $ApiResponseCopyWith<dynamic, $Res> get result;
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
    Object? result = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_$_Initial(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
  const _$_Initial({required this.result, this.categoryImage});

  @override
  final ApiResponse<dynamic> result;
  @override
  final ImagePickerModel? categoryImage;

  @override
  String toString() {
    return 'CategoryState(result: $result, categoryImage: $categoryImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.categoryImage, categoryImage) ||
                other.categoryImage == categoryImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, categoryImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CategoryState {
  const factory _Initial(
      {required final ApiResponse<dynamic> result,
      final ImagePickerModel? categoryImage}) = _$_Initial;

  @override
  ApiResponse<dynamic> get result;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialEvent,
    TResult? Function()? reset,
    TResult? Function()? getCategory,
    TResult? Function(ImagePickerModel image)? pickCategoryImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function()? reset,
    TResult Function()? getCategory,
    TResult Function(ImagePickerModel image)? pickCategoryImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(_Reset value) reset,
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_PickCategoryImage value) pickCategoryImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? initialEvent,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_PickCategoryImage value)? pickCategoryImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(_Reset value)? reset,
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_PickCategoryImage value)? pickCategoryImage,
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
