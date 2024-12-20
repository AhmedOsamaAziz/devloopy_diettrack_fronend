// import 'package:flutter/material.dart';

// import '../../../Constants/constants.dart';
// import '../../../widgets/custom_text.dart';

// class CardListView extends StatelessWidget {
//   const CardListView({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.jobTitle,
//   });
//   final String image;
//   final String name;
//   final String jobTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(
//           height: 406,
//           width: 300.5,
//           // width: 376.5,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               image,
//               fit: BoxFit.contain,
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 0, // Adjust position from bottom
//           left: 0, // Adjust position from left
//           child: Container(
//             width: 270.5,
//             height: 100,
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//             decoration: const BoxDecoration(
//                 color: Color(0xffF6FBE9),
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20),
//                 )),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomText(
//                   text: name,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: ColorsApp.MAINCOLOR,
//                 ),
//                 CustomText(
//                   text: jobTitle,
//                   fontSize: 18,
//                   color: ColorsApp.MAINCOLOR,
//                   fontWeight: FontWeight.w500,
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
