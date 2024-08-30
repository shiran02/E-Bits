// import 'package:flutter/material.dart';
// import 'package:fluttertask/presentation/resources/colors.dart';
// import 'package:get/get.dart';

// import '../../resources/assets_manager.dart';

// class CountryViewDataMainCard extends StatelessWidget {
//   const CountryViewDataMainCard({
//     super.key,
//     required this.flag,
//     required this.countryName,
//     required this.capital,
//     required this.detailList,
//   });

//   final String flag;
//   final String countryName;
//   final String capital;
//   final AllCountryData detailList;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 15,
//         vertical: 10,
//       ),
//       margin: const EdgeInsets.symmetric(
//         horizontal: 4,
//         vertical: 5,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.all(
//           Radius.circular(20),
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.2),
//             spreadRadius: 3,
//             blurRadius: 2,
//             offset: const Offset(
//               0.9,
//               0.3,
//             ),
//           ),
//         ],
//       ),
//       height: 100,
//       width: 34,
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 26,
//             backgroundImage: NetworkImage(
//               scale: 4,
//               flag,
//             ),
//           ),
//           const SizedBox(
//             width: 19,
//           ),
//           Expanded(
//             flex: 2,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   countryName,
//                   style: const TextStyle(
//                     color: AColors.mainTextColor,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   capital,
//                   style: const TextStyle(
//                     color: AColors.secondTextColor,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//           const Spacer(
//             flex: 1,
//           ),
//           GestureDetector(
//             onTap: () {
//               // Navigate To Country View Screen ---------
//               // Get.to(
//               //   () => CountryDetailView(
//               //     countryDetail: detailList,
//               //   ),
//               //   transition: Transition.rightToLeft,
//               // );
//             },
//             child: SizedBox(
//               width: 50,
//               height: 80,
//               child: Image.asset(
//                 ImageAssets.arrow_btn,
//                 scale: 3.1,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
