import 'package:flutter/material.dart';

import '../../../../helper/screen_size.dart';
import 'layouts/desktop_header.dart';
import 'layouts/mobile_header.dart';
import 'layouts/tablet_header.dart';

class HeaderTeamSection extends StatelessWidget {
  const HeaderTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopHeaderTeamSection()
        : ScreenSize.isMedium
            ? const TabletHeaderTeamSection()
            : const MobileHeaderTeamSection();
  }
}
