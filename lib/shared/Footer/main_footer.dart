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
