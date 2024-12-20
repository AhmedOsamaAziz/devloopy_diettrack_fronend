// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/model/drawer_admin_model.dart';
// import 'package:ui/screens/admin_dashboard/widget/active_and_inactive_item.dart';

// import 'custom_drawer_item_list_view.dart';

// class CustomDrawerAdmin extends StatelessWidget {
//   const CustomDrawerAdmin({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: ColorsApp.OUTLINECOLOR,
//       child: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: DrawerHeader(
//                 child: Image.asset(
//               'assets/images/logo.png',
//               color: ColorsApp.MAINCOLOR,
//             )),
//           ),
//           const CustomDrawerItemListView(),
//           const SliverFillRemaining(
//             hasScrollBody: false,
//             child: Column(
//               children: [
//                 Expanded(child: SizedBox()),
//                 InActiveDrawerItem(
//                     drawerAdminModel: DrawerAdminModel(
//                         title: 'Setting', icon: Icons.settings)),
//                 InActiveDrawerItem(
//                     drawerAdminModel:
//                         DrawerAdminModel(title: 'Logout', icon: Icons.logout)),
//                 SizedBox(height: 30),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
