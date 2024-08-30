import 'package:fluttertask/domain/get_products_detail/product_detail_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'product_detail_response.freezed.dart';

@freezed
class ProductDetailResponse with _$ProductDetailResponse {
  factory ProductDetailResponse({
    required KtList<ProductDetailData> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductDetailResponse;

  factory ProductDetailResponse.empty() {
    return ProductDetailResponse(
      products: emptyList(),
      total: 0,
      skip: 0,
      limit: 0,
    );
  }
}
