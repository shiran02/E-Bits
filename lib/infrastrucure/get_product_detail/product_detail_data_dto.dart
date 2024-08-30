import 'package:fluttertask/domain/get_products_detail/product_detail_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'product_detail_data_dto.freezed.dart';
part 'product_detail_data_dto.g.dart';

@freezed
class ProductDetailDataDto with _$ProductDetailDataDto {
  factory ProductDetailDataDto({
    required int id,
    required String title,
    required double price,
    required double rating,
    String? brand,
    required String thumbnail,
    required String description,
    required List<String> images,
  }) = _ProductDetailDataDto;

  factory ProductDetailDataDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDataDtoFromJson(json);

  factory ProductDetailDataDto.fromDomain(ProductDetailData domain) {
    return ProductDetailDataDto(
      id: domain.id,
      title: domain.title,
      price: domain.price,
      rating: domain.rating,
      brand: domain.brand,
      thumbnail: domain.thumbnail,
      description: domain.description,
      images: domain.images.asList(),
    );
  }

  const ProductDetailDataDto._();

  ProductDetailData toDomain() {
    return ProductDetailData(
      id: id,
      title: title,
      price: price,
      rating: rating,
      brand: brand,
      thumbnail: thumbnail,
      description: description,
      images: images.toImmutableList(),
    );
  }
}
