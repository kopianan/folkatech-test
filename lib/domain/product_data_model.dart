import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_model.freezed.dart';
part 'product_data_model.g.dart';

//data class built using freezed generator
@freezed
class ProductDataModel with _$ProductDataModel {
  factory ProductDataModel({
    int? id,
    String? name,
    String? cover,
    String? desc,
    int? price,
  }) = _ProductDataModel;

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}
