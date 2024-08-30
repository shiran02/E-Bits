import 'package:fluttertask/infrastrucure/get_product_detail/product_detail_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/get_products_detail/product_detail_response.dart';

part 'product_detail_response_dto.freezed.dart';
part 'product_detail_response_dto.g.dart';

@freezed
class ProductDetailResponseDto with _$ProductDetailResponseDto {
  factory ProductDetailResponseDto({
    required List<ProductDetailDataDto> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductDetailResponseDto;

  factory ProductDetailResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseDtoFromJson(json);

  factory ProductDetailResponseDto.fromDomain(ProductDetailResponse domain) {
    return ProductDetailResponseDto(
      products: domain.products
          .map((x) => ProductDetailDataDto.fromDomain(x))
          .asList(),
      total: domain.total,
      skip: domain.skip,
      limit: domain.limit,
    );
  }

  const ProductDetailResponseDto._();

  ProductDetailResponse toDomain() {
    return ProductDetailResponse(
      products: products.map((s) => s.toDomain()).toImmutableList(),
      total: total,
      skip: skip,
      limit: limit,
    );
  }
}
