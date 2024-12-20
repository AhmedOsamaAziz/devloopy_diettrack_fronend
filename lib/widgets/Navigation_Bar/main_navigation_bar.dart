import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/Navigation_Bar/layouts/tablet_layout.dart';

import 'layouts/desktop_layouts.dart';
import 'layouts/mobile_layout.dart';

class MainNavigationBar extends StatelessWidget {
  const MainNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopNavigationBar()
        : ScreenSize.isMedium
            ? const TabletNavigationBar()
            : const MobileNavigationBar();
  }
}
