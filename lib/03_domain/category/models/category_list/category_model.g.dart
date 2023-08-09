// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['uuid'] as String?,
      image: json['category_image'] as String?,
      categoryName: json['category_name'] as String?,
      offer: json['offer'] as int?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'uuid': instance.id,
      'category_image': instance.image,
      'category_name': instance.categoryName,
      'offer': instance.offer,
    };
