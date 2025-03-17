import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/service_section/service_section.dart';
import 'package:ui/shared/Footer/main_footer.dart';

import 'sections/feature_section/features_section.dart';
import 'sections/intorduction_section/introduction_section.dart';
import 'sections/our_blog_section/blog_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return const SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          IntroductionSection(),
          FeatureSection(),
          OurBlogsSection(),
          //TestmonilasSection(),
          ServiceSection(),
          SizedBox(height: 10),
          MainFooter(),
        ],
      ),
    );
  }
}
