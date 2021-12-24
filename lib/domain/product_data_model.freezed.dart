// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
class _$ProductDataModelTearOff {
  const _$ProductDataModelTearOff();

  _ProductDataModel call(
      {int? id, String? name, String? cover, String? desc, int? price}) {
    return _ProductDataModel(
      id: id,
      name: name,
      cover: cover,
      desc: desc,
      price: price,
    );
  }

  ProductDataModel fromJson(Map<String, Object?> json) {
    return ProductDataModel.fromJson(json);
  }
}

/// @nodoc
const $ProductDataModel = _$ProductDataModelTearOff();

/// @nodoc
mixin _$ProductDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? cover, String? desc, int? price});
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  final ProductDataModel _value;
  // ignore: unused_field
  final $Res Function(ProductDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? desc = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProductDataModelCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$ProductDataModelCopyWith(
          _ProductDataModel value, $Res Function(_ProductDataModel) then) =
      __$ProductDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? cover, String? desc, int? price});
}

/// @nodoc
class __$ProductDataModelCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res>
    implements _$ProductDataModelCopyWith<$Res> {
  __$ProductDataModelCopyWithImpl(
      _ProductDataModel _value, $Res Function(_ProductDataModel) _then)
      : super(_value, (v) => _then(v as _ProductDataModel));

  @override
  _ProductDataModel get _value => super._value as _ProductDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cover = freezed,
    Object? desc = freezed,
    Object? price = freezed,
  }) {
    return _then(_ProductDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDataModel implements _ProductDataModel {
  _$_ProductDataModel({this.id, this.name, this.cover, this.desc, this.price});

  factory _$_ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? cover;
  @override
  final String? desc;
  @override
  final int? price;

  @override
  String toString() {
    return 'ProductDataModel(id: $id, name: $name, cover: $cover, desc: $desc, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith =>
      __$ProductDataModelCopyWithImpl<_ProductDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataModelToJson(this);
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  factory _ProductDataModel(
      {int? id,
      String? name,
      String? cover,
      String? desc,
      int? price}) = _$_ProductDataModel;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDataModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get cover;
  @override
  String? get desc;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$ProductDataModelCopyWith<_ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
