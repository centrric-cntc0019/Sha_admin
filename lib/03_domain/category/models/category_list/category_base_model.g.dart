// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryBaseModel _$$_CategoryBaseModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryBaseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryBaseModelToJson(
        _$_CategoryBaseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
