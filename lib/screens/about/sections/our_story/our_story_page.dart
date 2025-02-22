import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'layouts/desktop_our_story.dart';
import 'layouts/mobile_our_story.dart';
import 'layouts/tablet_our_story.dart';

class OurStorySections extends StatelessWidget {
  const OurStorySections({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return ScreenSize.isLarge
        ? const DesktopOurStorySection()
        : ScreenSize.isMedium
            ? const TabletOurStorySection()
            : const MobileOurStorySection();
  }
}
