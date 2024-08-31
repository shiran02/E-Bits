import 'package:flutter/material.dart';

import 'package:fluttertask/presentation/home_view/widgets/curved_edges.dart';
import 'package:fluttertask/presentation/resources/colors.dart';
import 'package:fluttertask/presentation/resources/string_manager.dart';
import 'package:fluttertask/presentation/resources/style_manager.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductView extends HookConsumerWidget {
  ProductView({
    super.key,
    required this.images,
    required this.title,
    required this.description,
    required this.rate,
    required this.price,
  });

  KtList<String> images;
  String title;
  String description;
  double rate;
  double price;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header part -------------------------------------------------------
            Container(
              height: h * 0.56,
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: TCustomCurvedWidgets(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      height: h * 0.56,
                      width: w,
                      color: AColors.primaryGreenColor,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: w,
                            height: MediaQuery.of(context).size.height * 0.4,
                            child: PageView.builder(
                              controller: controller,
                              itemCount: images.size,
                              itemBuilder: (_, index) {
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          images[index],
                                          fit: BoxFit.cover,
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            } else {
                                              return const Stack(
                                                children: [
                                                  Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }
                                          },
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Center(
                                              child:
                                                  Text('Failed to load image'),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            child: SmoothPageIndicator(
                              controller: controller,
                              count: images.size,
                              effect: const WormEffect(
                                activeDotColor: Colors.black,
                                dotHeight: 16,
                                dotWidth: 16,
                                type: WormType.thinUnderground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$${price.toString()}',
                    maxLines: 1,
                    style: getBoldStyle(
                      color: AColors.mainTextColor,
                      fontSize: 25,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 2,
                          style: getBoldStyle(
                            color: AColors.mainTextColor,
                            fontSize: 21,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange.shade300,
                          ),
                          Text(
                            rate.toString(),
                            maxLines: 1,
                            style: getBoldStyle(
                              color: AColors.mainTextColor,
                              fontSize: 21,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    description,
                    maxLines: 5,
                    style: getRegularStyle(
                      color: AColors.mainTextColor,
                      fontSize: 15,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: w,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(
                          12,
                        )),
                    child: Center(
                      child: Text(
                        AppStrings.butNow,
                        style: getRegularStyle(
                          color: AColors.white,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
