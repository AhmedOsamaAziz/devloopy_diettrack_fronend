// import 'package:flutter/material.dart';
// import 'package:ui/constants/constants.dart';
// import 'package:ui/helper/screen_size.dart';
//
// class BuildContactInfo extends StatelessWidget {
//   const BuildContactInfo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenSize.isLarge
//         ? Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             spacing: 15,
//             children: [
//               _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com"),
//               _buildContactItem(Icons.phone, "+002000020200"),
//               _buildContactItem(Icons.location_on, "SomeWhere in the World"),
//               _buildContactItem(
//                   Icons.copyright, "2024 DevLoopy.com.All rights reserved"),
//             ],
//           )
//         : Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             spacing: 15,
//             children: [
//               _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com"),
//               _buildContactItem(Icons.phone, "+002000020200"),
//               _buildContactItem(Icons.location_on, "SomeWhere in the World"),
//               _buildContactItem(
//                   Icons.copyright, "2024 DevLoopy.com.All rights reserved"),
//             ],
//           );
//   }
//
//   Widget _buildContactItem(IconData icon, String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5),
//       child: Container(
//         width: 300,
//         height: 30,
//         decoration: BoxDecoration(
//             color: ColorsApp.AppBarColor,
//             borderRadius: BorderRadius.circular(5)),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(icon, color: Colors.white, size: 18),
//             const SizedBox(width: 5),
//             Text(text, style: const TextStyle(color: Colors.white)),
//           ],
//         ),
//       ),
//     );
//   }
// }
