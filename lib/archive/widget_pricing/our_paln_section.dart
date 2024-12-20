// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import '../../../Constants/constants.dart';
// import '../../../../../../Shared/custom_text.dart';

// class OurPalnFeatures extends StatelessWidget {
//   const OurPalnFeatures({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 100),
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         decoration: BoxDecoration(
//             color: ColorsApp.OUTLINECOLOR,
//             borderRadius: BorderRadius.circular(10)),
//         child: const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CustomOurPrincing(
//               title: 'Fuatures',
//               title2: 'Personalized Nutrition Plan',
//               title3: 'Mobile App Access',
//               title4: 'Email Support',
//               title5: 'One -on One Video Consultations',
//               title6: 'Recipe Recommendations and Meal Planning',
//               title7: 'Priority Support',
//               title8: 'Educational Resources and Guides',
//               title9: 'Advanced Progress Tracking Tools',
//               title10: 'Customized Meal Plans and Recipe Suggestions',
//               title11: 'Phone Support',
//             ),
//             CustomFreePlanIcon(
//               title: 'Free Plan',
//               image: 'assets/images/checkboxright.png',
//               image2: 'assets/images/checkboxright.png',
//               image3: 'assets/images/checkboxright.png',
//               image4: 'assets/images/checkboxright.png',
//               image5: 'assets/images/checkbox2.png',
//               image6: 'assets/images/checkbox2.png',
//               image7: 'assets/images/checkbox2.png',
//               image8: 'assets/images/checkbox2.png',
//               image9: 'assets/images/checkbox2.png',
//               image10: 'assets/images/checkbox2.png',
//               image11: 'assets/images/checkbox2.png',
//             ),
//             CustomFreePlanIcon(
//               title: 'Free Plan',
//               image: 'assets/images/checkboxright.png',
//               image2: 'assets/images/checkboxright.png',
//               image3: 'assets/images/checkboxright.png',
//               image4: 'assets/images/checkboxright.png',
//               image5: 'assets/images/checkboxright.png',
//               image6: 'assets/images/checkboxright.png',
//               image7: 'assets/images/checkboxright.png',
//               image8: 'assets/images/checkbox2.png',
//               image9: 'assets/images/checkbox2.png',
//               image10: 'assets/images/checkbox2.png',
//               image11: 'assets/images/checkbox2.png',
//             ),
//             CustomFreePlanIcon(
//               title: 'Free Plan',
//               image: 'assets/images/checkboxright.png',
//               image2: 'assets/images/checkboxright.png',
//               image3: 'assets/images/checkboxright.png',
//               image4: 'assets/images/checkboxright.png',
//               image5: 'assets/images/checkboxright.png',
//               image6: 'assets/images/checkboxright.png',
//               image7: 'assets/images/checkboxright.png',
//               image8: 'assets/images/checkboxright.png',
//               image9: 'assets/images/checkboxright.png',
//               image10: 'assets/images/checkboxright.png',
//               image11: 'assets/images/checkboxright.png',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomOurPrincing extends StatelessWidget {
//   const CustomOurPrincing({
//     super.key,
//     required this.title,
//     this.title2,
//     this.title3,
//     this.title4,
//     this.title5,
//     this.title6,
//     this.title7,
//     this.title8,
//     this.title9,
//     this.title10,
//     this.title11,
//   });

//   final String title;
//   final String? title2;
//   final String? title3;
//   final String? title4;
//   final String? title5;
//   final String? title6;
//   final String? title7;
//   final String? title8;
//   final String? title9;
//   final String? title10;
//   final String? title11;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: BoxDecoration(
//             color: ColorsApp.MAINCOLOR,
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child: CustomText(
//             text: title,
//             color: Colors.white,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title2 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title3 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title4 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title5 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title5 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title6 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title7 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title8 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title9 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.lightGreen,
//               ),
//             ),
//           ),
//           child: CustomText(
//             text: title10 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: 592,
//           height: 73,
//           decoration: const BoxDecoration(
//             border: Border(
//                 bottom: BorderSide(
//               color: Colors.lightGreen,
//             )),
//           ),
//           child: CustomText(
//             text: title11 ?? '',
//             color: Colors.black,
//             fontSize: 22,
//             fontWeight: FontWeight.normal,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CustomFreePlanIcon extends StatelessWidget {
//   const CustomFreePlanIcon({
//     super.key,
//     required this.title,
//     required this.image,
//     required this.image2,
//     required this.image3,
//     required this.image4,
//     required this.image5,
//     required this.image6,
//     required this.image7,
//     required this.image8,
//     required this.image9,
//     required this.image10,
//     required this.image11,
//   });
//   final String title;
//   final String? image;
//   final String? image2;
//   final String? image3;
//   final String? image4;
//   final String? image5;
//   final String? image6;
//   final String? image7;
//   final String? image8;
//   final String? image9;
//   final String? image10;
//   final String? image11;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           height: 73,
//           width: 231.33,
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: ColorsApp.MAINCOLOR),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30.0),
//             child: Align(
//               alignment: Alignment.center,
//               child: CustomText(
//                 text: title,
//                 color: Colors.white,
//                 fontSize: 22,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image2 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image3 ?? ''),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           height: 73,
//           width: 231.33,
//           child: Image.asset(image4 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image5 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image6 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image7 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image8 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image9 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image10 ?? ''),
//         ),
//         Container(
//           height: 73,
//           width: 231.33,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             border: const Border(
//               bottom: BorderSide(color: Colors.lightGreen),
//               left: BorderSide(color: Colors.lightGreen),
//             ),
//           ),
//           child: Image.asset(image11 ?? ''),
//         ),
//       ],
//     );
//   }
// }
