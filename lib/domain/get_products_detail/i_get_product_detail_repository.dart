import 'package:dartz/dartz.dart';
import 'package:fluttertask/domain/core/failure.dart';
import 'package:fluttertask/domain/get_products_detail/product_detail_response.dart';

abstract class IGetProductDetailRepository {
  Future<Either<Failure, ProductDetailResponse>> getProductDetail();
}
