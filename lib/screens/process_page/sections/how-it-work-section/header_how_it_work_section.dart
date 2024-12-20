import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/process_page/sections/how-it-work-section/layouts/mobile_header_how_it_work.dart';

import 'layouts/desktop_header_how_it_work.dart';
import 'layouts/tablet_header_how_it_work.dart';

class HeaderHowItWorkProcessSections extends StatelessWidget {
  const HeaderHowItWorkProcessSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopHowItWorkSection()
        : ScreenSize.isMedium
            ? const TabletHowItWorkSection()
            : const MobileHowItWorkSection();
  }
}
