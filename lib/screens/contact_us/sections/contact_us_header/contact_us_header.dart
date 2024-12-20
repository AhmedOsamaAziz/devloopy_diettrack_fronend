import 'package:flutter/material.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/layouts/desktop_header.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/layouts/mobile_header.dart';

import '../../../../helper/screen_size.dart';
import 'layouts/tablet_header.dart';

class HeaderContactUsSection extends StatelessWidget {
  const HeaderContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopContactUsSection()
        : ScreenSize.isMedium
            ? const TabletHeaderContactUsSection()
            : const MobileHeaderContactUsSection();
  }
}
