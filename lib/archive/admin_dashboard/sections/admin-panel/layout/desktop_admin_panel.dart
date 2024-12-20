// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import '../../../widget/custom_drawer.dart';
// import '../../tables/custom_table_dashbord.dart';

// class DesktopAdminPanel extends StatefulWidget {
//   const DesktopAdminPanel({super.key});

//   @override
//   State<DesktopAdminPanel> createState() => _DesktopAdminPanelState();
// }

// class _DesktopAdminPanelState extends State<DesktopAdminPanel> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: ColorsApp.MAINCOLOR,
//         title: const Text(
//           "Admin Dashbord",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Row(
//         children: [
//           const CustomDrawerAdmin(),
//           Expanded(
//             flex: 3,
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: const CustomTabelsDashbord(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
