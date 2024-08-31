import 'package:dartz/dartz.dart';
import 'package:fluttertask/domain/core/core_failure.dart';
import 'package:fluttertask/domain/core/failure.dart';
import 'package:fluttertask/domain/get_products_detail/i_get_product_detail_repository.dart';
import 'package:fluttertask/domain/get_products_detail/product_detail_response.dart';
import 'package:fluttertask/infrastrucure/core/api_helper.dart';
import 'package:fluttertask/infrastrucure/get_product_detail/product_detail_response_dto.dart';
import 'package:fluttertask/presentation/resources/log_utils.dart';

class GetAllProductDataReository implements IGetProductDetailRepository {
  GetAllProductDataReository(
    ApiHelper apiHelper,
  ) : _apiHelper = apiHelper;

  final ApiHelper _apiHelper;

  static final LogUtils _logUtils = LogUtils(
    featureName: "Get All Product Data Reository",
    printLog: true,
  );

  @override
  Future<Either<Failure, ProductDetailResponse>> getProductDetail() async {
    try {
      final res = await _apiHelper.callApi(
        'products',
        method: RestMethods.get,
      );

      if (res.success) {
        return right(
            ProductDetailResponseDto.fromJson(res.data as Map<String, dynamic>)
                .toDomain());
      } else {
        return left(
          Failure.core(
            CoreFailure.serverError(res.error ?? res.info!),
          ),
        );
      }
    } catch (e) {
      _logUtils.log("GetAll Product : Failure: $e");
      return left(
        Failure.core(
          CoreFailure.somethingWentWrong(e),
        ),
      );
    }
  }
}
