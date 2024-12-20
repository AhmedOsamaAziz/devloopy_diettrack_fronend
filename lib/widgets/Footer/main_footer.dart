import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'Layouts/daesktop_footer.dart';
import 'Layouts/mobile_footer.dart';
import 'Layouts/tablet_footer.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopFooter()
        : ScreenSize.isMedium
            ? const TabletFooter()
            : const MobileFooter();
  }
}
