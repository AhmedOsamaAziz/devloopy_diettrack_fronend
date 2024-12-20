import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/Card-Ask-Question/layout/mobile_card_ask_qusstion.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/layout/desktop_tablet_card_ask_qusstion.dart';

class CradAskQuestionSections extends StatelessWidget {
  const CradAskQuestionSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopAndTabletCardAskQusstion()
        : const MobileCustomCardFAQPrincing();
  }
}
