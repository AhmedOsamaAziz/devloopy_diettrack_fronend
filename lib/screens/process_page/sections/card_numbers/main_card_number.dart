import 'package:flutter/material.dart';

import '../../../../../helper/screen_size.dart';
import 'layout/desktop_card_number.dart';
import 'layout/mobile_card_number.dart';
import 'layout/tablet_card_number.dart';

class CardNumberProcessSections extends StatelessWidget {
  const CardNumberProcessSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DeskTopCardNumberProcess()
        : ScreenSize.isMedium
            ? const TabletCardNumberProcess()
            : const MobileCardNumberProcess();
  }
}
