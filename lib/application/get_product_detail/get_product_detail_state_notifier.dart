import 'package:dartz/dartz.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state.dart';
import 'package:fluttertask/domain/get_products_detail/i_get_product_detail_repository.dart';
import 'package:fluttertask/presentation/resources/log_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/i_local_repository.dart';

class GetAllProductDetailStateNotifier
    extends StateNotifier<GetProductDetailState> {
  GetAllProductDetailStateNotifier(
    this._localRepository,
    this._getAllProductDetailRepository,
  ) : super(
          GetProductDetailState.initial(),
        ) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "Get Product Detail State Notifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;
  final IGetProductDetailRepository _getAllProductDetailRepository;

  // get All Data -------------------------------------------------------------

  Future<void> getAllProductDetail() async {
    _logUtils.log("get All Product Detail");

    state = state.copyWith(
      isLoading: true,
    );

    final getAllProductDetailSucesOrFailure =
        await _getAllProductDetailRepository.getProductDetail();

    _logUtils.log(
        "get All Country Data Suces Or Failure  $getAllProductDetailSucesOrFailure");

    getAllProductDetailSucesOrFailure.fold((failure) {
      _logUtils.log(":::::::::::::::::::   failure");
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        // responseFailure: optionOf(failure),
      );
    }, (response) {
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        productDetailDataList: response.products,
      );
      _logUtils.log(
          "::::::::::product Detail Data List:::::::::   ${state.productDetailDataList}");
    });
  }
}
