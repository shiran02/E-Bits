import 'package:fluttertask/application/get_product_detail/get_product_detail_state.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state_notifier.dart';
import 'package:fluttertask/infrastrucure/core/providers.dart';
import 'package:fluttertask/infrastrucure/get_product_detail/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getAllProductDetailStateNotifierProvider = StateNotifierProvider<
    GetAllProductDetailStateNotifier, GetProductDetailState>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);
  final getAllProductDetailRepository =
      ref.read(getAllProductsDetailRepositdoryProvider);
  return GetAllProductDetailStateNotifier(
      localRepository, getAllProductDetailRepository);
});
