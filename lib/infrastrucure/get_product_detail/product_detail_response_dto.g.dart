// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailResponseDtoImpl _$$ProductDetailResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailResponseDtoImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDetailDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductDetailResponseDtoImplToJson(
        _$ProductDetailResponseDtoImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
