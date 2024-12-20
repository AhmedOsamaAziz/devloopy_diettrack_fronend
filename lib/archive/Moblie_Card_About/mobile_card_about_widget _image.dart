// import 'package:flutter/material.dart';

// import '../../../../../../Constants/constants.dart';
// import '../../../../../../widgets/custom_text.dart';

// class MobileCardAboutWidgetImage extends StatelessWidget {
//   const MobileCardAboutWidgetImage({
//     super.key,
//     required this.image,
//     required this.title,
//     required this.subTitle,
//     required this.date,
//   });
//   final String image;
//   final String title;
//   final String subTitle;
//   final String date;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 360,
//           width: 358,
//           decoration: const BoxDecoration(
//             color: ColorsApp.MainColorbackgraund,
//           ),
//           child: Image.asset(
//             image,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Container(height: 10, width: 358, color: Colors.lightGreen),
//         Container(
//           height: 360,
//           width: 358,
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           decoration: const BoxDecoration(
//             color: ColorsApp.MainColorbackgraund,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 30.0),
//                 child: CustomText(
//                   text: title,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                   color: ColorsApp.MAINCOLOR,
//                 ),
//               ),
//               const SizedBox(
//                 width: 392,
//                 child: Divider(color: Colors.lightGreen, thickness: 2),
//               ),
//               const SizedBox(height: 10),
//               CustomText(
//                 text: subTitle,
//                 fontWeight: FontWeight.w300,
//                 fontSize: 14,
//                 color: ColorsApp.TextColorFeatures,
//               ),
//               const SizedBox(height: 10),
//               CustomText(
//                 text: date,
//                 fontWeight: FontWeight.w300,
//                 fontSize: 12,
//                 color: ColorsApp.TextColorFeatures,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
