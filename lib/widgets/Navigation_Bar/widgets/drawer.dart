import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';

class CustomDrower extends StatefulWidget {
  const CustomDrower({super.key});

  @override
  State<CustomDrower> createState() => _CustomDrowerState();
}

class _CustomDrowerState extends State<CustomDrower> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.OUTLINECOLOR,
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              text: 'Home',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
              text: 'About',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const TeamPage()));
              },
              text: 'Team',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProcessPage()));
              },
              text: 'Process',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PricingPage()));
              },
              text: 'Pricing',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const BlogPage()));
              },
              text: 'Blog',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
            const SizedBox(height: 20),
            CustomText(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ContactUsPage()));
              },
              text: 'Contact Us',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: ColorsApp.MAINCOLOR,
            ),
          ],
        ),
      ),
    );
  }
}
