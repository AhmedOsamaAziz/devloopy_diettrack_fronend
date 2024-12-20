// // ignore: file_names
// import 'package:flutter/material.dart';
//  import '../../../Constants/constants.dart';
//  import 'custom_down_bar.dart';
//  class CustomMeetOurTeamSection extends StatelessWidget {
//   const CustomMeetOurTeamSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           alignment: Alignment.center,
//           clipBehavior: Clip.none,
//           children: [
//             Container(
//               width: 1596,
//               height: 250,
//               decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
//               child: Image.asset(
//                 'assets/images/backgroundcard.png',
//               ),
//             ),
//             Positioned(
//               top: 50,
//               child: Container(
//                 width: 90,
//                 height: 90,
//                 decoration: const BoxDecoration(),
//                 child: Image.asset(
//                   'assets/images/hedaer.png',
//                   height: 90,
//                   width: 90,
//                 ),
//               ),
//             ),
//             const Positioned(
//               top: 150,
//               child: Text(
//                 'Meet Our Team of Experts',
//                 style: TextStyle(
//                     fontSize: 48,
//                     fontWeight: FontWeight.w400,
//                     color: ColorsApp.MAINCOLOR),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 100),
//           color: const Color(0xffF6FBE9),
//           child: const Text(
//             "Our team at Nutritionist is composed of highly skilled professionals who are passionate about helping you achieve your health and wellness goals. With a diverse range of expertise in nutrition, coaching, and support, our team is dedicated to providing you with the guidance and personalized care you need. Get to know the experts behind our success and discover how they can make a positive impact on your journey to better health.",
//             style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//                 color: ColorsApp.MAINCOLOR),
//           ),
//         ),
//         const SizedBox(height: 80),
//         const CustomDownBarTeamPage(),
//       ],
//     );
//   }
// }
