// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.g.dart';
part 'category_model.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @JsonKey(name: 'uuid') String? id,
    @JsonKey(name: 'category_image') String? image,
    @JsonKey(name: 'category_name') String? categoryName,
    int? offer,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
