import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/layout/desktop_tablet_card_ask_qusstion.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/layout/mobile_card_ask_qusstion.dart';

import 'layout/tablet_card_ask_qusstion.dart';

class CardAskQuestionSections extends StatelessWidget {
  const CardAskQuestionSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopCardAskQusstion()
        : ScreenSize.isMedium
            ? const TabletCustomCardFAQPrincing()
            : const MobileCustomCardFAQPrincing();
  }
}
