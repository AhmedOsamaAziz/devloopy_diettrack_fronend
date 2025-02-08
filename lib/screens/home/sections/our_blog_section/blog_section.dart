import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/Layouts/our_blog_desktop.dart';
import 'package:ui/screens/home/sections/our_blog_section/Layouts/our_blog_mobile.dart';
import 'package:ui/screens/home/sections/our_blog_section/Layouts/our_blog_tablet.dart';

class OurBlogsSection extends StatelessWidget {
  const OurBlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return ScreenSize.isLarge
        ? const OurBlogDesktop()
        : ScreenSize.isMedium
            ? const OurBlogTablet()
            : const OurBlogMoblie();
  }
}
