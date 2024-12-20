import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';

import '../../widgets/Footer/main_footer.dart';
import 'sections/feature_section/features_section.dart';
import 'sections/intorduction_section/introduction_section.dart';
import 'sections/our_blog_section/blog_section.dart';
import 'sections/testimonials_section/testimonials_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainNavigationBar(),
            IntroductionSection(),
            SizedBox(height: 50),
            FeatureSection(),
            SizedBox(height: 50),
            OurBlogsSection(),
            TestmonilasSection(),
            SizedBox(height: 50),
            //ServiceSection(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
