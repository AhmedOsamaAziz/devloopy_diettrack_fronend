import 'package:flutter/material.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/shared/Footer/widget/build_nav_button_footer.dart';

class BuildNavLinks extends StatelessWidget {
  final bool isMobile;

  const BuildNavLinks({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      spacing: 10,
      runSpacing: 5,
      children: [
        BuildNavbuttonFooter(text: 'Home', index: 0, page: HomePage()),
        BuildNavbuttonFooter(text: 'About', index: 1, page: AboutPage()),
        BuildNavbuttonFooter(text: 'Team', index: 2, page: TeamPage()),
        BuildNavbuttonFooter(text: 'Process', index: 3, page: ProcessPage()),
        BuildNavbuttonFooter(text: 'Pricing', index: 4, page: PricingPage()),
        BuildNavbuttonFooter(text: 'Blog', index: 5, page: BlogPage()),
        BuildNavbuttonFooter(text: 'Contact', index: 6, page: ContactUsPage()),
      ],
    );
  }
}
