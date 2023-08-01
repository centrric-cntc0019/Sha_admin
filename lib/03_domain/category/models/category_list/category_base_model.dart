import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'category_base_model.freezed.dart';
part 'category_base_model.g.dart';

@freezed
class CategoryBaseModel with _$CategoryBaseModel {
  factory CategoryBaseModel({
    List<CategoryModel>? data,
  }) = _CategoryBaseModel;

  factory CategoryBaseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryBaseModelFromJson(json);
}
