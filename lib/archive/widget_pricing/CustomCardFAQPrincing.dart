// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../../../Constants/constants.dart';
// import '../../../../../../Shared/custom_text.dart';

// class CustomCardFAQPrincing extends StatelessWidget {
//   const CustomCardFAQPrincing({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 100),
//       width: 1596,
//       height: 765,
//       child: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//                 width: 1596,
//                 padding: const EdgeInsets.only(
//                     left: 20, right: 35, top: 25, bottom: 25),
//                 color: ColorsApp.OUTLINECOLOR,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                               text: 'What is personalized nutrition coaching?'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Flexible(
//                             child: CustomText(
//                                 fontSize: 18,
//                                 text:
//                                     "Personalized nutrition coaching involves creating a customized nutrition plan based on your unique goals, preferences, and dietary requirements. Our team of experts will work closely with you to develop a plan that fits your lifestyle and helps you achieve optimal health and wellness."),
//                           ),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               text:
//                                   'How can nutrition coaching help me lose weight?'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               text:
//                                   'Can I still enjoy my favorite foods while on a nutrition plan??'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               text:
//                                   'How often will I have contact with my nutritionist?'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               text: 'How long will it take to see results?'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                     Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomText(
//                               fontSize: 20,
//                               text:
//                                   'Are the meal plans and recipes provided suitable for vegetarians or vegans??'),
//                           SizedBox(
//                               height: 30,
//                               width: 30,
//                               child:
//                                   SvgPicture.asset('assets/images/Icon.svg')),
//                         ]),
//                   ],
//                 )),
//           ),
//           const SizedBox(width: 20),
//           Expanded(
//             flex: 1,
//             child: Column(
//               children: [
//                 Container(
//                   width: 518,
//                   height: 527,
//                   color: ColorsApp.OUTLINECOLOR,
//                   child: Column(
//                     children: [
//                       Padding(
//                           padding: const EdgeInsets.only(top: 50.0),
//                           child: AspectRatio(
//                               aspectRatio: 10 / 1.5,
//                               child: SvgPicture.asset(
//                                 'assets/images/Logo.svg',
//                               ))),
//                       const SizedBox(height: 50),
//                       CustomText(
//                         text: 'Ask your question',
//                         fontSize: 34,
//                         fontWeight: FontWeight.bold,
//                         color: ColorsApp.MAINCOLOR,
//                       ),
//                       CustomText(
//                         text: 'Feel Free to Ask questions on anytime',
//                         fontSize: 18,
//                       ),
//                       const SizedBox(height: 50),
//                       Container(
//                         width: 178,
//                         height: 63,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: ColorsApp.SecondaryColor,
//                         ),
//                         child: MaterialButton(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(
//                                   3.0), // Adjust as needed
//                             ),
//                             onPressed: () {},
//                             child: const Text(
//                               'Ask A Question',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 18,
//                               ),
//                             )),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
