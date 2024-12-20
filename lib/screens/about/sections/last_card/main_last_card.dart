import 'package:flutter/material.dart';
import '../../../../helper/screen_size.dart';
import 'layouts/dasktop_last_card.dart';
import 'layouts/mobile_last_card.dart';
import 'layouts/tablet_last_card.dart';

class LastCardSections extends StatelessWidget {
  const LastCardSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DeskTopLastCard()
        : ScreenSize.isMedium
            ? const TabletLastCard()
            : const MobileLastCard();
  }
}
