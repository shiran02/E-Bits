import 'package:dartz/dartz.dart';
import 'package:fluttertask/domain/core/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/get_products_detail/product_detail_data.dart';

part 'get_product_detail_state.freezed.dart';

@freezed
class GetProductDetailState with _$GetProductDetailState {
  factory GetProductDetailState({
    required bool isLoading,
    required Option<Failure> responseFailure,
    required KtList<ProductDetailData> productDetailDataList,
  }) = _GetProductDetailState;

  factory GetProductDetailState.initial() {
    return GetProductDetailState(
      isLoading: false,
      responseFailure: none(),
      productDetailDataList: emptyList(),
    );
  }
}
