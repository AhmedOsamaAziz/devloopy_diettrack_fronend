import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'layout/desktop.dart';
import 'layout/moblie.dart';
import 'layout/tablet.dart';

class WelcomeSections extends StatelessWidget {
  const WelcomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return ScreenSize.isLarge
        ? const DesktopWelcomeSection()
        : ScreenSize.isMedium
            ? const TabletWelcomeSection()
            : const MoblieWelcomeSection();
  }
}
