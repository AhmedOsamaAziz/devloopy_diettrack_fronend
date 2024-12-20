// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/screens/admin_dashboard/widget/custom_drawer.dart';

// class MobileAdminDashbord extends StatefulWidget {
//   const MobileAdminDashbord({super.key});

//   @override
//   State<MobileAdminDashbord> createState() => _MobileAdminDashbordState();
// }

// class _MobileAdminDashbordState extends State<MobileAdminDashbord> {
//   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: scaffoldKey,
//         drawer: const CustomDrawerAdmin(),
//         appBar: buildAppBar(context),
//         body: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 color: Colors.blue,
//               ),
//             ),
//           ],
//         ));
//   }

//   AppBar? buildAppBar(BuildContext context) {
//     return MediaQuery.of(context).size.width < 900
//         ? AppBar(
//             backgroundColor: ColorsApp.MAINCOLOR,
//             leading: IconButton(
//               onPressed: () {
//                 scaffoldKey.currentState!.openDrawer();
//               },
//               icon: const Icon(Icons.menu, color: ColorsApp.OUTLINECOLOR),
//             ),
//           )
//         : null;
//   }
// }
