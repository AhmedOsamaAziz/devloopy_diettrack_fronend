// import 'package:flutter/material.dart';
// import '../../../../../Constants/constants.dart';

// import '../../../../../widgets/custom_text.dart';

// class TabletLastCard extends StatelessWidget {
//   const TabletLastCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
//               width: 1280,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Expanded(
//                     flex: 5,
//                     child: SizedBox(
//                       height: 119,
//                       width: 1132,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 30.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             CustomText(
//                               text: 'We Are Proud of Our Achievement',
//                               fontWeight: FontWeight.w700,
//                               fontSize: 24,
//                               color: ColorsApp.MAINCOLOR,
//                             ),
//                             const SizedBox(height: 10),
//                             CustomText(
//                               text:
//                                   "But our ultimate satisfaction comes from seeing our clients achieve their goals and live healthier, happier lives. Join Nutritionist today and embark on your own transformative journey towards optimal health and well-being.",
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               color: const Color(0xff333333),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(horizontal: 40),
//                       height: 50,
//                       width: 100,
//                       child: MaterialButton(
//                           shape: RoundedRectangleBorder(
//                             borderRadius:
//                                 BorderRadius.circular(8.0), // Adjust as needed
//                           ),
//                           color: ColorsApp.SecondaryColor,
//                           onPressed: () {},
//                           child: const Text(
//                             "Book a Demo",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 14,
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
