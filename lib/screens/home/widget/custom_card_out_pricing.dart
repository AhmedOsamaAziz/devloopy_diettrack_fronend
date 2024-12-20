// import 'package:flutter/material.dart';
// import '../../../Constants/constants.dart';
// import '../../../widgets/custom_text.dart';

// class CustomCradOurPricing extends StatelessWidget {
//   const CustomCradOurPricing(
//       {super.key,
//       required this.title,
//       required this.subTitle,
//       required this.paragrph,
//       required this.amount,
//       this.vertical});

//   final String title;
//   final String subTitle;
//   final String paragrph;
//   final String amount;
//   final double? vertical;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 1,
//       child: Container(
//         width: 512,
//         height: 497,
//         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
//         decoration: const BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(12)),
//             color: ColorsApp.OUTLINECOLOR),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomText(
//                 text: title,
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: ColorsApp.TextColor),
//             const SizedBox(height: 15),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: CustomText(
//                   text: subTitle,
//                   fontSize: 18,
//                   color: ColorsApp.TextColorFeatures),
//             ),
//             const SizedBox(height: 40),
//             CustomText(
//                 text: paragrph,
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18,
//                 color: ColorsApp.TextColorFeatures),
//             const SizedBox(height: 40),
//             SizedBox(
//               width: 412,
//               height: 135,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       CustomText(
//                           text: amount,
//                           fontSize: 26,
//                           fontWeight: FontWeight.bold,
//                           color: ColorsApp.TextColor),
//                       CustomText(
//                           text: " /month",
//                           fontWeight: FontWeight.w400,
//                           fontSize: 12,
//                           color: ColorsApp.TextColor),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   MaterialButton(
//                       minWidth: double.infinity,
//                       shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(3.0), // Adjust as needed
//                       ),
//                       color: ColorsApp.SecondaryColor,
//                       onPressed: () {},
//                       child: const Text(
//                         'Choose Plan',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 12,
//                         ),
//                       )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
