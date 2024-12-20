import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/intorduction_section/layout/desktop_layout.dart';
import 'package:ui/screens/home/sections/intorduction_section/layout/mobile_layout.dart';
import 'package:ui/screens/home/sections/intorduction_section/layout/tablet_layout.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenSize = MediaQuery.of(context).size.width;

    return ScreenSize.isLarge
        ? const DeskTopLayout()
        : ScreenSize.isMedium
            ? const TabletLayout()
            : const MobileLayout();
  }
}
