// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/cubits/login_cubit/login_cubit.dart';
// import 'package:ui/cubits/login_cubit/login_state.dart';
// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/shared/Navigation_Bar/layouts/desktop_layouts/widget/advertise_bar.dart';
// import 'package:ui/shared/Navigation_Bar/layouts/desktop_layouts/widget/our_nav_bar.dart';
//
// class DesktopNavigationBar extends StatefulWidget {
//   const DesktopNavigationBar({super.key});
//
//   @override
//   State<DesktopNavigationBar> createState() => _DesktopNavigationBarState();
// }
//
// class _DesktopNavigationBarState extends State<DesktopNavigationBar> {
//   int activeIndex = 0; // Tracks the active navigation index
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenSize.getScreenSize(context);
//
//     return BlocBuilder<LoginCubit, LoginState>(
//       builder: (context, state) {
//         final isLoggedIn = state is LoginSuccess;
//         return Center(
//           child: Container(
//             alignment: Alignment.center,
//             height: 115,
//             width: double.infinity,
//             padding: const EdgeInsets.symmetric(vertical: 15),
//             decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     children: [
//                       const AdvertiseBar(),
//                       const SizedBox(height: 10),
//                       OurNavBar(
//                           activeIndex: activeIndex,
//                           onTabChanged: (index) {
//                             setState(() {
//                               activeIndex = index;
//                             });
//                           }),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// //
