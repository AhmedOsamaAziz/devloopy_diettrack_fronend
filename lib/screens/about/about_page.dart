import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/sections/category_story/category_story.dart';
import 'package:ui/shared/Footer/main_footer.dart';
import 'package:ui/shared/Navigation_Bar/main_navigation_bar.dart';
import 'package:ui/shared/last_card/last_card_section.dart';
 import 'package:ui/screens/about/sections/our_story/our_story_page.dart';
 
import 'sections/card_company_achievement/main_card_company.dart';
import 'sections/welcome_section/welcome_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            MainNavigationBar(),
            WelcomeSections(),
            OurStorySections(),
            CategoryStory(),
            CardCompanySections(),
            LastCardSections(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
