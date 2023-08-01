// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryBaseModel _$CategoryBaseModelFromJson(Map<String, dynamic> json) {
  return _CategoryBaseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryBaseModel {
  List<CategoryModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryBaseModelCopyWith<CategoryBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBaseModelCopyWith<$Res> {
  factory $CategoryBaseModelCopyWith(
          CategoryBaseModel value, $Res Function(CategoryBaseModel) then) =
      _$CategoryBaseModelCopyWithImpl<$Res, CategoryBaseModel>;
  @useResult
  $Res call({List<CategoryModel>? data});
}

/// @nodoc
class _$CategoryBaseModelCopyWithImpl<$Res, $Val extends CategoryBaseModel>
    implements $CategoryBaseModelCopyWith<$Res> {
  _$CategoryBaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryBaseModelCopyWith<$Res>
    implements $CategoryBaseModelCopyWith<$Res> {
  factory _$$_CategoryBaseModelCopyWith(_$_CategoryBaseModel value,
          $Res Function(_$_CategoryBaseModel) then) =
      __$$_CategoryBaseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel>? data});
}

/// @nodoc
class __$$_CategoryBaseModelCopyWithImpl<$Res>
    extends _$CategoryBaseModelCopyWithImpl<$Res, _$_CategoryBaseModel>
    implements _$$_CategoryBaseModelCopyWith<$Res> {
  __$$_CategoryBaseModelCopyWithImpl(
      _$_CategoryBaseModel _value, $Res Function(_$_CategoryBaseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CategoryBaseModel(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryBaseModel implements _CategoryBaseModel {
  _$_CategoryBaseModel({final List<CategoryModel>? data}) : _data = data;

  factory _$_CategoryBaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryBaseModelFromJson(json);

  final List<CategoryModel>? _data;
  @override
  List<CategoryModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryBaseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryBaseModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryBaseModelCopyWith<_$_CategoryBaseModel> get copyWith =>
      __$$_CategoryBaseModelCopyWithImpl<_$_CategoryBaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryBaseModelToJson(
      this,
    );
  }
}

abstract class _CategoryBaseModel implements CategoryBaseModel {
  factory _CategoryBaseModel({final List<CategoryModel>? data}) =
      _$_CategoryBaseModel;

  factory _CategoryBaseModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryBaseModel.fromJson;

  @override
  List<CategoryModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryBaseModelCopyWith<_$_CategoryBaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
