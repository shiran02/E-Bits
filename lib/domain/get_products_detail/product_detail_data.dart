import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'product_detail_data.freezed.dart';

@freezed
class ProductDetailData with _$ProductDetailData {
  factory ProductDetailData({
    required int id,
    required String title,
    required double price,
    required double rating,
    String? brand,
    required String thumbnail,
    required String description,
    required KtList<String> images,
  }) = _ProductDetailData;

  factory ProductDetailData.empty() {
    return ProductDetailData(
      id: 0,
      title: "",
      price: 0.0,
      rating: 0.0,
      brand: null,
      thumbnail: "",
      description: "",
      images: emptyList(),
    );
  }
}
