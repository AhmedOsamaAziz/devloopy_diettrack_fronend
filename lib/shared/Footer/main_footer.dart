// import 'package:flutter/material.dart';
// import 'package:ui/helper/screen_size.dart';
//
// import 'Layouts/daesktop_footer.dart';
// import 'Layouts/mobile_footer.dart' show MobileFooter;
//
// class MainFooter extends StatelessWidget {
//   const MainFooter({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenSize.isLarge || ScreenSize.isMedium
//         ? const DesktopFooter()
//         : const MobileFooter();
//   }
// }

import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/Footer/Layouts/daesktop_footer.dart';
import 'package:ui/shared/Footer/Layouts/mobile_footer.dart';

import 'Layouts/tablet_footer.dart';

class MainFooter extends StatelessWidget {
  final int activeIndex;
  const MainFooter({super.key, required this.activeIndex});
  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? DesktopFooter(activeIndex: activeIndex)
        : ScreenSize.isMedium
            ? TabletFooter(activeIndex: activeIndex)
            : MobileFooter(activeIndex: activeIndex);
  }
}
//
// class DesktopFooter extends StatelessWidget {
//   const DesktopFooter({super.key, required this.activeIndex});
//   final int activeIndex;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 20),
//       color: ColorsApp.MAINCOLOR,
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Image.asset(Assets.imagesIconFlower,
//                   color: ColorsApp.SecondaryColor, height: 40, width: 40),
//               const SizedBox(width: 10),
//               const Text("DietTrack", style: TextStyle(color: Colors.white)),
//               const Spacer(),
//               _buildDesktopNavigation(activeIndex,
//                   (index) => context.read<NavigationCubit>().changeTab(index)),
//               const Spacer(),
//             ],
//           ),
//           const SizedBox(height: 20),
//           const BuildContactInfo(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDesktopNavigation(
//       int currentIndex, Function(int index) onTabSelected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           NavButton(
//             label: 'Home',
//             index: 0,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(0),
//           ),
//           NavButton(
//             label: 'About',
//             index: 1,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(1),
//           ),
//           NavButton(
//             label: 'Team',
//             index: 2,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(2),
//           ),
//           NavButton(
//             label: 'Blog',
//             index: 3,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(3),
//           ),
//           NavButton(
//             label: 'Process',
//             index: 4,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(4),
//           ),
//           NavButton(
//             label: 'Pricing',
//             index: 5,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(5),
//           ),
//           NavButton(
//             label: 'Contact Us',
//             index: 6,
//             currentIndex: currentIndex,
//             onPressed: () => onTabSelected(6),
//           ),
//         ],
//       ),
//     );
//   }
// }
