import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layouts/desktop.dart';
import 'layouts/mobile.dart';
import 'layouts/tablet.dart';

class TeamPageCardMangament extends StatelessWidget {
  const TeamPageCardMangament({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DeskTopCardManagment()
        : ScreenSize.isMedium
            ? const TabletCardManagment()
            : const MobileCardManagment();
  }
}
