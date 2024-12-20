// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/widgets/custom_button.dart';

// class MobileButtomTeamPage extends StatelessWidget {
//   const MobileButtomTeamPage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       height: 115,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: ColorsApp.MAINCOLOR,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(10),
//           bottomRight: Radius.circular(10),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
//               child: CustomButton(
//                 height: 55,
//                 onPressed: () {},
//                 text: " Management Team ",
//                 colorbtn: ColorsApp.TextColor,
//                 colortxt: const Color(0xFFE6E6E6),
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ),
//           Expanded(
//             child: CustomButton(
//               height: 55,
//               onPressed: () {},
//               text: " Nutritionists Team",
//               colortxt: const Color(0xFFE6E6E6),
//               fontWeight: FontWeight.normal,
//             ),
//           ),
//           // Expanded(
//           //   child: CustomButton(
//           //     height: 50,
//           //     onPressed: () {},
//           //     text: "Customer Support ",
//           //     colortxt: const Color(0xFFE6E6E6),
//           //     fontWeight: FontWeight.normal,
//           //   ),
//           // ),
//           // Expanded(
//           //   child: CustomButton(
//           //     height: 50,
//           //     onPressed: () {},
//           //     text: "Marketing and Communications",
//           //     colortxt: const Color(0xFFE6E6E6),
//           //     fontWeight: FontWeight.normal,
//           //   ),
//           // ),
//           // Expanded(
//           //   child: CustomButton(
//           //     height: 50,
//           //     onPressed: () {},
//           //     text: "Technology and Development",
//           //     colortxt: const Color(0xFFE6E6E6),
//           //     fontWeight: FontWeight.normal,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
