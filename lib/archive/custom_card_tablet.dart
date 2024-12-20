// import 'package:flutter/material.dart';
// import 'package:ui/model/card_about.dart';
// import '../../../../../Constants/constants.dart';
// import '../../../../../widgets/custom_text.dart';

// class CustomCardTablet extends StatelessWidget {
//   const CustomCardTablet({
//     super.key,
//     required this.cardCompanyAbout,
//   });
//   final CardCompanyAbout cardCompanyAbout;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         height: 229,
//         width: 340,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: const Color(0xffF6FBE9)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 SizedBox(
//                   height: 48,
//                   width: 48,
//                   child: Image.asset(
//                     cardCompanyAbout.image,
//                     height: 48,
//                     width: 48,
//                   ),
//                   // cardData.image,
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: CustomText(
//                       text: cardCompanyAbout.title,
//                       color: ColorsApp.MAINCOLOR,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: CustomText(
//                 text: cardCompanyAbout.subTitle,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w500,
//                 color: ColorsApp.TextColorFeatures,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
