import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/our_blog_section/blog_section.dart';
import 'package:ui/screens/home/sections/service_section/service_section.dart';
import 'package:ui/screens/home/sections/testimonials_section/testimonials_section.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';

import '../../widgets/Footer/main_footer.dart';
import 'sections/feature_section/features_section.dart';
import 'sections/intorduction_section/introduction_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return Scaffold(
      floatingActionButton: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.whatsapp,
              color: Colors.green, size: 40)),
      backgroundColor: const Color(0XFFFAFDF2),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MainNavigationBar(),
            IntroductionSection(),
            FeatureSection(),
            OurBlogsSection(),
            TestmonilasSection(),
            ServiceSection(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
