import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layouts/dasktop_last_card.dart';
import 'layouts/mobile_last_card.dart';
import 'layouts/tablet_last_card.dart';

class ProcessLastCard extends StatelessWidget {
  const ProcessLastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DeskTopLastCardProcess()
        : ScreenSize.isMedium
            ? const TabletLastCardProcess()
            : const MobileLastCardProcess();
  }
}
