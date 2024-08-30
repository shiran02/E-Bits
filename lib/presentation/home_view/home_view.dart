import 'package:flutter/material.dart';
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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Filters ',
                  style: const TextStyle(
                      color: AColors.mainTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),

          // ---------------

          // Country List view -------------------------------------------------

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: h,
              //   child: allCountryDataList.isEmpty()
              //       ? const Center(
              //           child: CommonLoadingIndicator(),
              //         )
              //       : ListView.builder(
              //           itemCount: allCountryDataList.size,
              //           itemBuilder: (context, index) {
              //             //----------------------------------------------------

              //             final detailList = allCountryDataList[index];
              //             final countryName =
              //                 allCountryDataList[index].name.common;
              //             final flag = allCountryDataList[index].flags.png;
              //             final capital = allCountryDataList[index].capital[0];

              //             // ----------------------------------------------------
              //             if (index >= allCountryDataList.size) {
              //               return Container(); // Return an empty container if out of bounds
              //             }
              //             return Skeletonizer(
              //               enabled: isEnable,
              //               child: CountryViewDataMainCard(
              //                 flag: flag,
              //                 countryName: countryName,
              //                 capital: capital,
              //                 detailList: detailList,
              //               ),
              //             );
              //           },
              //         ),
            ),
          ),
        ],
      ),
    );
  }
}
