import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/feature_section/layouts/features_section_desktop.dart';
import 'package:ui/screens/home/sections/feature_section/layouts/features_section_mobile.dart';

import 'layouts/features_section_tablet.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return ScreenSize.isLarge
        ? const FeatureSdctionDesktop()
        : ScreenSize.isMedium
            ? const FeatureSectionTablet()
            : const FeatureSectionMoblie();
  }
}
