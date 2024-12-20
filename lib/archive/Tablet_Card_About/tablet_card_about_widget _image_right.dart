// import 'package:flutter/material.dart';

// import '../../../../../../Constants/constants.dart';
// import '../../../../../../widgets/custom_text.dart';

// class TabletCardAboutWidgetImageRight extends StatelessWidget {
//   const TabletCardAboutWidgetImageRight({
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
//     return Row(
//       children: [
//         Expanded(
//           child: Container(
//             height: 500,
//             width: 550,
//             decoration: const BoxDecoration(
//               color: ColorsApp.MainColorbackgraund,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 40.0),
//                   child: CustomText(
//                     text: title,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24,
//                     color: ColorsApp.MAINCOLOR,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 550,
//                   child: Divider(color: Colors.lightGreen, thickness: 2),
//                 ),
//                 const SizedBox(height: 20),
//                 CustomText(
//                   text: subTitle,
//                   fontWeight: FontWeight.w300,
//                   fontSize: 18,
//                   color: ColorsApp.TextColorFeatures,
//                 ),
//                 const SizedBox(height: 20),
//                 CustomText(
//                   text: date,
//                   fontWeight: FontWeight.w300,
//                   fontSize: 18,
//                   color: ColorsApp.TextColorFeatures,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Container(height: 530, width: 10, color: Colors.lightGreen),
//         Expanded(
//           child: Container(
//             height: 500,
//             width: 550,
//             padding: const EdgeInsets.only(top: 10, bottom: 20, right: 10),
//             decoration: const BoxDecoration(
//               color: ColorsApp.MainColorbackgraund,
//             ),
//             child: Image.asset(image, fit: BoxFit.cover),
//           ),
//         ),
//       ],
//     );
//   }
// }
