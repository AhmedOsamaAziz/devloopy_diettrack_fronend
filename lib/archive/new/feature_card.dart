// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/widgets/custom_text.dart';

// class FeatureCard extends StatelessWidget {
//   const FeatureCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         height: ScreenSize.height == 253 ? 229 : 229,
//         width: ScreenSize.width == 615 ? 350 : 358,
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(ScreenSize.isLarge ? 20 : 10),
//             color: const Color(0xffF6FBE9)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 SizedBox(
//                   height: ScreenSize.height == 54 ? 48 : 48,
//                   width: ScreenSize.width == 54 ? 48 : 48,
//                   child: Image.asset(
//                     'assets/images/icon.png',
//                     width: ScreenSize.width == 54 ? 48 : 48,
//                     height: ScreenSize.height == 54 ? 48 : 48,
//                   ),
//                   // cardData.image,
//                 ),
//                 const SizedBox(width: 15),
//                 CustomText(
//                     text: ' card.title',
//                     color: ColorsApp.MAINCOLOR,
//                     fontWeight: FontWeight.bold,
//                     fontSize: ScreenSize.isLarge
//                         ? 24
//                         : ScreenSize.isMedium
//                             ? 16
//                             : 18),
//               ],
//             ),
//             const SizedBox(height: 20),
//             CustomText(
//               text: 'card.subTitle',
//               fontSize: ScreenSize.isLarge ? 18 : 14,
//               fontWeight: FontWeight.w500,
//               color: ColorsApp.TextColorFeatures,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
