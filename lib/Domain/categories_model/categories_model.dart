import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'categories_model.freezed.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required String name,
    required String iconImage,
  }) = _CategoriesModel;
}


