import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layouts/desktop_pricing_header.dart';
import 'layouts/mobile_pricing_header.dart';
import 'layouts/tablet_pricing_header.dart';

class PricingSection extends StatelessWidget {
  const PricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopPricingHeader()
        : ScreenSize.isMedium
            ? const TabletPricingHeader()
            : const MobilePricingHeader();
  }
}
