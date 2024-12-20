// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';

// import 'package:ui/widgets/custom_text.dart';

// class MobileCustomCradOurPricingPage extends StatelessWidget {
//   const MobileCustomCradOurPricingPage({
//     super.key,
//     required this.title,
//     required this.subTitle,
//     required this.paragrph,
//     required this.paragrph1,
//     required this.paragrph2,
//     required this.paragrph3,
//     this.paragrph4,
//     this.paragrph5,
//     required this.amount,
//     this.bottom,
//     this.height,
//     this.top,
//     this.color,
//     this.widthContainer,
//     this.heightContainer,
//     this.heightContainerSmall,
//     this.widthContainerSmall,
//   });

//   final String title;
//   final String subTitle;
//   final String paragrph;
//   final String paragrph1;
//   final String paragrph2;
//   final String paragrph3;
//   final String? paragrph4;
//   final String? paragrph5;

//   final String amount;
//   final double? bottom;
//   final double? height;
//   final double? top;
//   final Color? color;

//   final double? widthContainer;
//   final double? heightContainer;

//   final double? heightContainerSmall;
//   final double? widthContainerSmall;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: ColorsApp.OUTLINECOLOR,
//       elevation: 0.2,
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         width: widthContainer,
//         height: heightContainer,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: ColorsApp.OUTLINECOLOR),
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomText(
//                   text: title,
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                   color: ColorsApp.TextColor),
//               const SizedBox(height: 5),
//               CustomText(
//                   text: subTitle,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400,
//                   color: ColorsApp.TextColorFeatures),
//               const SizedBox(height: 15),
//               Container(
//                 height: heightContainerSmall,
//                 width: widthContainerSmall,
//                 padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
//                 decoration: BoxDecoration(
//                   color: const Color(0xffEEF8D3),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0),
//                         child: CustomText(
//                             text: paragrph,
//                             fontWeight: FontWeight.w500,
//                             fontSize: 14,
//                             color: ColorsApp.TextColorFeatures),
//                       ),
//                       const SizedBox(height: 10),
//                       CustomText(
//                           text: paragrph1,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: ColorsApp.TextColorFeatures),
//                       const SizedBox(height: 10),
//                       CustomText(
//                           text: paragrph2,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: ColorsApp.TextColorFeatures),
//                       const SizedBox(height: 10),
//                       CustomText(
//                           text: paragrph3,
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: ColorsApp.TextColorFeatures),
//                       const SizedBox(height: 10),
//                       CustomText(
//                           text: paragrph4 ?? '',
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: ColorsApp.TextColorFeatures),
//                       const SizedBox(height: 20),
//                       Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: color,
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: CustomText(
//                                 // fontWeight: FontWeight.w500,
//                                 text: paragrph5 ?? '',
//                                 fontSize: 14,
//                                 color: ColorsApp.OUTLINECOLOR),
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   CustomText(
//                       text: amount,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: ColorsApp.TextColor),
//                   CustomText(
//                       text: " /month",
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                       color: ColorsApp.TextColor),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               SizedBox(
//                 width: double.infinity,
//                 height: 40,
//                 child: MaterialButton(
//                     shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.circular(3.0), // Adjust as needed
//                     ),
//                     color: ColorsApp.SecondaryColor,
//                     onPressed: () {},
//                     child: const Text(
//                       'Choose Plan',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 14,
//                       ),
//                     )),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
