import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/card_company_achievement/layout/desktop.dart';
import 'package:ui/screens/about/sections/card_company_achievement/layout/mobile.dart';
import 'package:ui/screens/about/sections/card_company_achievement/layout/tablet.dart';
import '../../../../helper/screen_size.dart';

class CardCompanySections extends StatelessWidget {
  const CardCompanySections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopCardSection()
        : ScreenSize.isMedium
            ? const TabletCardSection()
            : const MoblieCardSection();
  }
}
