import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/sections/category_story/layouts/mobile.dart';

import 'layouts/desktop.dart';
import 'layouts/tablet.dart';

class OurStory extends StatelessWidget {
  const OurStory({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopCardStory()
        : ScreenSize.isMedium
            ? const TabletCardStory()
            : const MobileCardStory();
  }
}
