import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layout/desktop_basic_plan.dart';
import 'layout/mobile_basic_plan.dart';
import 'layout/tablet_basic_plan.dart';

class PricingPalnSection extends StatelessWidget {
  const PricingPalnSection({super.key});

  @override
  Widget build(BuildContext context) {

    ScreenSize.getScreenSize(context);
    return ScreenSize.isLarge
        ? const DesktopListPricing()
        : ScreenSize.isMedium
            ? const TabletListPricing()
            : const MobileListPricing();
  }
}
