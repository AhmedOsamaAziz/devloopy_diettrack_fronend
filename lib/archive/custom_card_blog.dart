// import 'package:flutter/material.dart';

// import '../../../Constants/constants.dart';
// import 'package:ui/widgets/custom_text.dart';

// class CusromCardOurBlog extends StatelessWidget {
//   const CusromCardOurBlog({
//     super.key,
//     required this.title,
//     required this.image,
//     required this.titleHeader,
//     required this.subTitle,
//     this.onPressed,
//   });

//   final String title;
//   final String image;
//   final String titleHeader;
//   final String subTitle;
//   final void Function()? onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Container(
//       padding: const EdgeInsets.only(bottom: 30, right: 100, left: 30, top: 30),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.only(left: 10.0),
//             child: Column(
//               children: [
//                 CustomText(text: title),
//                 const SizedBox(
//                   width: 170,
//                   child: Divider(
//                     thickness: 2,
//                     color: ColorsApp.SecondaryColor,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Container(
//               margin: const EdgeInsets.symmetric(horizontal: 2),
//               child: Image.asset(
//                 image,
//                 height: 185,
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//           Row(
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(
//                         text: titleHeader,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       CustomText(
//                         text: subTitle,
//                         fontSize: 12,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               MaterialButton(
//                   padding: const EdgeInsets.all(20),
//                   height: 40,
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(3.0), // Adjust as needed
//                   ),
//                   color: ColorsApp.SecondaryColor,
//                   onPressed: onPressed,
//                   child: const Text(
//                     'Read More',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: FontsApp.fontFamilyUrbanist,
//                       fontWeight: FontWeight.w800,
//                       fontSize: 12,
//                     ),
//                   )),
//             ],
//           )
//         ],
//       ),
//     ));
//   }
// }
