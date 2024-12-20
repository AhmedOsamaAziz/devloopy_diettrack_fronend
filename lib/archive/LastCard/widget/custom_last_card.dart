// import 'package:flutter/material.dart';
// import '../../../Constants/constants.dart';
// import '../../../widgets/custom_text.dart';

// class CustomLastCard extends StatelessWidget {
//   const CustomLastCard({
//     super.key,
//     required this.text,
//     required this.subTitle,
//     required this.textbtn,
//     this.fontsize = 38,
//     this.fontsizeSubText,
//     this.heightBtn = 63,
//     this.widthBtn = 154,
//     this.fontsizeBtn = 18,

//     // this.paddinghorizontal = 80.0,
//   });

//   final String text;
//   final String subTitle;
//   final String textbtn;
//   final double? fontsize;
//   final double? fontsizeSubText;
//   final double? heightBtn;
//   final double? widthBtn;
//   final double? fontsizeBtn;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
//       child: Stack(
//         children: [
//           Card(
//             elevation: 1,
//             child: Container(
//               // padding: const EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xffF6FBE9),
//               ),
//               height: 279,
//               width: 1596,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Expanded(
//                     flex: 5,
//                     child: SizedBox(
//                       height: 119,
//                       width: 1132,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 60.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             CustomText(
//                               text: text,
//                               fontWeight: FontWeight.w700,
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               fontSize: fontsize,
//                               color: ColorsApp.MAINCOLOR,
//                             ),
//                             const SizedBox(height: 10),
//                             CustomText(
//                               text: subTitle,
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                               color: const Color(0xff333333),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 40),
//                       height: heightBtn,
//                       width: widthBtn,
//                       child: MaterialButton(
//                           shape: RoundedRectangleBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Adjust as needed
//                           ),
//                           color: ColorsApp.SecondaryColor,
//                           onPressed: () {},
//                           child: Text(
//                             textbtn,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w500,
//                               fontSize: fontsizeBtn,
//                             ),
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Image.asset('assets/images/AbstractDesign.png', height: 100),
//           Positioned(
//               bottom: 0,
//               right: 0,
//               child: Image.asset('assets/images/Abstract Design2.png',
//                   height: 100))
//         ],
//       ),
//     );
//   }
// }
