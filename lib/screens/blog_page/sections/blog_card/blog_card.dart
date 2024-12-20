import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'layout/desktop_blog_card.dart';
import 'layout/mobile_blog_card.dart';
import 'layout/tablet_blog_card.dart';

class BLogCard extends StatelessWidget {
  const BLogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopBlogCard()
        : ScreenSize.isMedium
            ? const TabletBlogCard()
            : const MobileBlogCard();
  }
}
