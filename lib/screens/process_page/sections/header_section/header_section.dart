import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layouts/desktop_header_process.dart';
import 'layouts/mobile_header_process.dart';
import 'layouts/tablet_header_process.dart';

class HeaderProcessSections extends StatelessWidget {
  const HeaderProcessSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopHeaderProcessSection()
        : ScreenSize.isMedium
            ? const TabletHeaderProcessSection()
            : const MobileHeaderProcessSection();
  }
}
