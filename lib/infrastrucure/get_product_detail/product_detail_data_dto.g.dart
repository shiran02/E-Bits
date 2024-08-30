// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailDataDtoImpl _$$ProductDetailDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailDataDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      brand: json['brand'] as String?,
      thumbnail: json['thumbnail'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductDetailDataDtoImplToJson(
        _$ProductDetailDataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'rating': instance.rating,
      'brand': instance.brand,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'images': instance.images,
    };
