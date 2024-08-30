// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  KtList<String> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailDataCopyWith<ProductDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailDataCopyWith<$Res> {
  factory $ProductDetailDataCopyWith(
          ProductDetailData value, $Res Function(ProductDetailData) then) =
      _$ProductDetailDataCopyWithImpl<$Res, ProductDetailData>;
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      double rating,
      String? brand,
      String thumbnail,
      String description,
      KtList<String> images});
}

/// @nodoc
class _$ProductDetailDataCopyWithImpl<$Res, $Val extends ProductDetailData>
    implements $ProductDetailDataCopyWith<$Res> {
  _$ProductDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? rating = null,
    Object? brand = freezed,
    Object? thumbnail = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailDataImplCopyWith<$Res>
    implements $ProductDetailDataCopyWith<$Res> {
  factory _$$ProductDetailDataImplCopyWith(_$ProductDetailDataImpl value,
          $Res Function(_$ProductDetailDataImpl) then) =
      __$$ProductDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      double price,
      double rating,
      String? brand,
      String thumbnail,
      String description,
      KtList<String> images});
}

/// @nodoc
class __$$ProductDetailDataImplCopyWithImpl<$Res>
    extends _$ProductDetailDataCopyWithImpl<$Res, _$ProductDetailDataImpl>
    implements _$$ProductDetailDataImplCopyWith<$Res> {
  __$$ProductDetailDataImplCopyWithImpl(_$ProductDetailDataImpl _value,
      $Res Function(_$ProductDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? rating = null,
    Object? brand = freezed,
    Object? thumbnail = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(_$ProductDetailDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc

class _$ProductDetailDataImpl implements _ProductDetailData {
  _$ProductDetailDataImpl(
      {required this.id,
      required this.title,
      required this.price,
      required this.rating,
      this.brand,
      required this.thumbnail,
      required this.description,
      required this.images});

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final double rating;
  @override
  final String? brand;
  @override
  final String thumbnail;
  @override
  final String description;
  @override
  final KtList<String> images;

  @override
  String toString() {
    return 'ProductDetailData(id: $id, title: $title, price: $price, rating: $rating, brand: $brand, thumbnail: $thumbnail, description: $description, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.images, images) || other.images == images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, rating, brand,
      thumbnail, description, images);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailDataImplCopyWith<_$ProductDetailDataImpl> get copyWith =>
      __$$ProductDetailDataImplCopyWithImpl<_$ProductDetailDataImpl>(
          this, _$identity);
}

abstract class _ProductDetailData implements ProductDetailData {
  factory _ProductDetailData(
      {required final int id,
      required final String title,
      required final double price,
      required final double rating,
      final String? brand,
      required final String thumbnail,
      required final String description,
      required final KtList<String> images}) = _$ProductDetailDataImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  double get price;
  @override
  double get rating;
  @override
  String? get brand;
  @override
  String get thumbnail;
  @override
  String get description;
  @override
  KtList<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailDataImplCopyWith<_$ProductDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
