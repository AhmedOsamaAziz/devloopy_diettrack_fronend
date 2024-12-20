// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore: file_names
// import 'package:flutter/material.dart';

// import '../../../Constants/constants.dart';

// class CustomHeaderOurBlog extends StatelessWidget {
//   const CustomHeaderOurBlog({
//     super.key,
//     required this.header,
//     this.subTitle,
//   });

//   final String header;
//   final String? subTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 100),
//       child: Column(
//         children: [
//           Stack(
//             alignment: Alignment.center,
//             clipBehavior: Clip.none,
//             children: [
//               Container(
//                 width: 1596,
//                 height: 250,
//                 decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
//                 child: Image.asset(
//                   'assets/images/backgroundcard.png',
//                 ),
//               ),
//               Positioned(
//                 top: 50,
//                 child: Container(
//                   width: 90,
//                   height: 90,
//                   decoration: const BoxDecoration(),
//                   child: Image.asset(
//                     'assets/images/hedaer.png',
//                     height: 90,
//                     width: 90,
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 160,
//                 child: Text(
//                   header,
//                   style: const TextStyle(
//                       fontSize: 48,
//                       fontWeight: FontWeight.w500,
//                       color: ColorsApp.MAINCOLOR),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: 1596,
//             height: 100,
//             padding: const EdgeInsets.symmetric(horizontal: 150),
//             color: const Color(0xffF6FBE9),
//             child: Text(
//               subTitle ?? '',
//               style: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   color: ColorsApp.MAINCOLOR),
//             ),
//           ),
//           const SizedBox(height: 80),
//         ],
//       ),
//     );
//   }
// }
