import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/sections/category_story/layouts/mobile.dart';

import 'layouts/desktop.dart';
import 'layouts/tablet.dart';

class CategoryStory extends StatelessWidget {
  const CategoryStory({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return ScreenSize.isLarge

        ? const DesktopCardStory()
        : ScreenSize.isMedium
            ? const TabletCardStory()
            : const MobileCardStory();
  }
}
