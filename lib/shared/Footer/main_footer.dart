// import 'package:flutter/material.dart';
// import 'package:ui/helper/screen_size.dart';
//
// import 'Layouts/daesktop_footer.dart';
// import 'Layouts/mobile_footer.dart' show MobileFooter;
//
// class MainFooter extends StatelessWidget {
//   const MainFooter({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenSize.isLarge || ScreenSize.isMedium
//         ? const DesktopFooter()
//         : const MobileFooter();
//   }
// }

import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/shared/Footer/widget/build_nav_button_footer.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          return const DesktopFooter();
        } else if (constraints.maxWidth >= 600) {
          return const TabletFooter();
        } else {
          return const MobileFooter();
        }
      },
    );
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 130.0, vertical: 20),
      color: ColorsApp.MAINCOLOR,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(Assets.imagesIconFlower,
                  color: ColorsApp.SecondaryColor, height: 40, width: 40),
              const SizedBox(width: 10),
              const Text("DietTrack", style: TextStyle(color: Colors.white)),
              const Spacer(),
              _buildNavLinks(),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          const BuildContactInfo(),
        ],
      ),
    );
  }
}

class TabletFooter extends StatelessWidget {
  const TabletFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      color: ColorsApp.MAINCOLOR,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesIconFlower,
                  color: ColorsApp.SecondaryColor, height: 35, width: 35),
              const SizedBox(width: 10),
              const Text("DietTrack", style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 15),
          _buildNavLinks(),
          const SizedBox(height: 20),
          const BuildContactInfo(),
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: ColorsApp.MAINCOLOR,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesIconFlower,
                  color: ColorsApp.SecondaryColor, height: 60, width: 60),
              const SizedBox(width: 10),
              const Text("DietTrack", style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 15),
          _buildNavLinks(isMobile: true),
          const SizedBox(height: 20),
          const BuildContactInfo(),
        ],
      ),
    );
  }
}

Widget _buildNavLinks({bool isMobile = false}) {
  return const Wrap(
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

class BuildContactInfo extends StatelessWidget {
  const BuildContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com"),
              _buildContactItem(Icons.phone, "+002000020200"),
              _buildContactItem(Icons.location_on, "SomeWhere in the World"),
              _buildContactItem(
                  Icons.copyright, "2024 DevLoopy.com.All rights reserved"),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com"),
              _buildContactItem(Icons.phone, "+002000020200"),
              _buildContactItem(Icons.location_on, "SomeWhere in the World"),
              _buildContactItem(
                  Icons.copyright, "2024 DevLoopy.com.All rights reserved"),
            ],
          );
  }
}

Widget _buildContactItem(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      width: 300,
      height: 30,
      decoration: BoxDecoration(
          color: ColorsApp.AppBarColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 5),
          Text(text, style: const TextStyle(color: Colors.white)),
        ],
      ),
    ),
  );
}
