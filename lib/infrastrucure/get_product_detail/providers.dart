import 'package:fluttertask/infrastrucure/core/providers.dart';
import 'package:fluttertask/infrastrucure/get_product_detail/product_detail_data_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getAllProductsDetailRepositdoryProvider =
    Provider.autoDispose<GetAllProductDataReository>((ref) {
  final apiHelper = ref.watch(apiHelperProvider);

  return GetAllProductDataReository(apiHelper);
});
