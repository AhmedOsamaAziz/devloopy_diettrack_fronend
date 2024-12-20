// import 'package:flutter/material.dart';
// import 'package:ui/model/card_about.dart';
// import '../../../../../Constants/constants.dart';
// import '../../../../../widgets/custom_text.dart';

// class CustomCardMobile extends StatelessWidget {
//   const CustomCardMobile({
//     super.key,
//     required this.cardCompanyAbout,
//   });

//   final CardCompanyAbout cardCompanyAbout;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         height: 200,
//         width: 358,
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: const Color(0xffF6FBE9)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
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
//                 CustomText(
//                     text: cardCompanyAbout.title,
//                     color: ColorsApp.MAINCOLOR,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18),
//               ],
//             ),
//             const SizedBox(height: 20),
//             CustomText(
//               text: cardCompanyAbout.subTitle,
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//               color: ColorsApp.TextColorFeatures,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
