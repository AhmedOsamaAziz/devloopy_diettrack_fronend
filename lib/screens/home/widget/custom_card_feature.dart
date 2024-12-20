// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:ui/widgets/custom_text.dart';

// import '../../../Constants/constants.dart';

// class CustomCardFeatures extends StatelessWidget {
//   const CustomCardFeatures({
//     super.key,
//     // required this.image,
//     // required this.height,
//     // required this.width,
//     // required this.title,
//     // required this.subTitle,
//   });

//   // final String image;

//   // final double? height;
//   // final double? width;

//   // final String title;
//   // final String subTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 253,
//       width: 783,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12), color: const Color(0xffF6FBE9)),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   height: 80,
//                   width: 40,
//                   child: Image.asset(
//                     'assets/images/one.png',
//                     width: 40,
//                     height: 40,
//                   ),
//                   // cardData.image,
//                 ),
//                 const SizedBox(width: 10),
//                 CustomText(
//                     text: 'Personalized Nutrition Plans',
//                     color: ColorsApp.MAINCOLOR,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 36),
//               ],
//             ),
//             Expanded(
//               child: CustomText(
//                 text:
//                     "Receive a tailored nutrition plan designed specifically for your body and goals. Our certified nutritionists will consider your unique needs, dietary preferences, and health conditions to create a plan that suits you best.",
//                 fontSize: 18,
//                 color: ColorsApp.TextColorFeatures,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
