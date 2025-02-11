import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_grid_view.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';

class OurBlogDesktop extends StatelessWidget {
  const OurBlogDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 22 : 10),
      width: 1596,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenSize.isLarge
                    ? 250
                    : ScreenSize.isMedium
                        ? 100
                        : 10,
              ),
              child: const Column(
                  children: [OurBlogTitle(), OurBlogDescription()])),
          const SizedBox(height: 50),
          const CustomGridView(),
        ],
      ),
    );
  }
}
