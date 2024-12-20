import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'layouts/header_blog_desktop.dart';
import 'layouts/header_blog_mobile.dart';
import 'layouts/header_blog_tablet.dart';

class HeaderBolgSections extends StatelessWidget {
  const HeaderBolgSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const HeaderBlogDesktop()
        : ScreenSize.isMedium
            ? const HeaderBlogTablet()
            : const HeaderBlogMobile();
  }
}
