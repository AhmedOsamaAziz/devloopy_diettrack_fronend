import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/blog_page/sections/blog_buttons/layout/desktop_button_blog.dart';

import 'layout/mobile_button_blog.dart';
import 'layout/tablet_button_blog.dart';

class ButtonBolgSections extends StatelessWidget {
  const ButtonBolgSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopButtonBlogPage()
        : ScreenSize.isMedium
            ? const TabletButtonBlogPage()
            : const MobileButtonBlogPage();
  }
}
