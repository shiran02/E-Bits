import 'package:flutter/material.dart';
import 'package:fluttertask/application/get_product_detail/get_product_detail_state_notifier_provider.dart';
import 'package:fluttertask/presentation/common/common_loading_indicator.dart';
import 'package:fluttertask/presentation/product_view/product_view.dart';
import 'package:fluttertask/presentation/resources/string_manager.dart';
import 'package:fluttertask/presentation/resources/style_manager.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../resources/colors.dart';
import 'widgets/header_part.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    // useEffect(() {
    //   Future.delayed(Duration.zero, () {});
    //   return;
    // }, [
    //   ref.watch(getAllCountryDataStateNotifierProvider
    //       .select((value) => value.isSort))
    // ]);

    final allProductDetailList = ref.watch(
        getAllProductDetailStateNotifierProvider
            .select((value) => value.productDetailDataList));

    //--------------------------------------------------------------------------

    // -------------------------------------------------------------------------

    return Scaffold(
      backgroundColor: AColors.primaryBackgroundColor,
      body: Column(
        children: [
          // header part -------------------------------------------------------
          HeaderPart(h: h),

          // filter section ----------------------------------------------------

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(17)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: const Offset(
                    0.9,
                    0.3,
                  ),
                ),
              ],
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                Text(AppStrings.searchProduct,
                    style: getRegularStyle(
                      color: AColors.mainTextColor,
                      fontSize: 16,
                    )),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: h,
              child: allProductDetailList.isEmpty()
                  ? const Center(
                      child: CommonLoadingIndicator(),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 280,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemCount: allProductDetailList.size,
                      itemBuilder: (context, index) {
                        //----------------------------------------------------

                        final title = allProductDetailList[index].title;
                        final thumbnail = allProductDetailList[index].thumbnail;
                        final price = allProductDetailList[index].price;
                        final brand = allProductDetailList[index].brand;
                        final rate = allProductDetailList[index].rating;
                        final description =
                            allProductDetailList[index].description;
                        final imagesList = allProductDetailList[index].images;

                        // ----------------------------------------------------
                        if (index >= allProductDetailList.size) {
                          return Container(); // Return an empty container if out of bounds
                        }
                        return Skeletonizer(
                          enabled: false,
                          child: InkWell(
                            onTap: () {
                              Get.to(
                                () => ProductView(
                                  images: imagesList,
                                  title: title,
                                  description: description,
                                  rate: rate,
                                  price: price,
                                ),
                                transition: Transition.rightToLeft,
                              );
                            },
                            child: Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(
                                        1, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              //height: 150,
                              width: 34,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: double.infinity,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                        child: Image.network(
                                          thumbnail, // Replace with your actual image URL
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        //vertical: 10,
                                      ),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            title,
                                            maxLines: 1,
                                            style: getBoldStyle(
                                              color: AColors.mainTextColor,
                                              fontSize: 16,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Visibility(
                                            visible: brand != null,
                                            child: Text(
                                              '($brand)',
                                              maxLines: 1,
                                              style: getRegularStyle(
                                                color: AColors.mainTextColor,
                                                fontSize: 10,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            description,
                                            textAlign: TextAlign.justify,
                                            maxLines: 2,
                                            style: getRegularStyle(
                                              color: AColors.mainTextColor,
                                              fontSize: 10,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '\$${price.toString()}',
                                                textAlign: TextAlign.justify,
                                                maxLines: 1,
                                                style: getBoldStyle(
                                                  color: AColors.mainTextColor,
                                                  fontSize: 20,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: const Center(
                                                  child: Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
