// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDataModel _$$_ProductDataModelFromJson(Map<String, dynamic> json) =>
    _$_ProductDataModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      cover: json['cover'] as String?,
      desc: json['desc'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$_ProductDataModelToJson(_$_ProductDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cover': instance.cover,
      'desc': instance.desc,
      'price': instance.price,
    };
