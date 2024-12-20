import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      height: 400,
      decoration: const BoxDecoration(
        color: ColorsApp.TextColor,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  size: 35.0,
                  color: ColorsApp.TitleColorFeatures,
                ),
                const Text(
                  "DietTrack",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Got To Top",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                  ),
                ),
                IconButton(
                    iconSize: 15.0,
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                      ColorsApp.AppBarColor,
                    )),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_upward,
                      color: Color(0xFFFFFFFF),
                    ))
              ],
            ),
          ),
          FittedBox(
            child: Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontsApp.fontFamilyUrbanist,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AboutPage()));
                    },
                    child: const Text(
                      "About",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: FontsApp.fontFamilyUrbanist,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TeamPage()));
                    },
                    child: const Text("Team",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsApp.fontFamilyUrbanist,
                        ))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProcessPage()));
                    },
                    child: const Text("Process",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsApp.fontFamilyUrbanist,
                        ))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PricingPage()));
                    },
                    child: const Text("Pricing",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsApp.fontFamilyUrbanist,
                        ))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BlogPage()));
                    },
                    child: const Text("Blog",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsApp.fontFamilyUrbanist,
                        ))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ContactUsPage()));
                    },
                    child: const Text("Contact",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: FontsApp.fontFamilyUrbanist,
                        ))),
              ],
            ),
          ),
          Container(
              width: 358,
              height: 257,
              padding: const EdgeInsets.all(20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContantFooter(
                      icon: Icons.mail,
                      color: ColorsApp.TitleColorFeatures,
                      text: "Ahmed.Madkour@gmail.com"),
                  CustomContantFooter(
                      icon: Icons.phone,
                      color: ColorsApp.TitleColorFeatures,
                      text: "+002000020200"),
                  CustomContantFooter(
                    icon: Icons.location_on,
                    color: ColorsApp.TitleColorFeatures,
                    text: "SomeWhere in the World",
                  ),
                  CustomContantFooter(
                    icon: Icons.copyright,
                    size: 14,
                    color: Color(0xFFFFFFFF),
                    text: "2024 DevLoopy.com.All rights reserved",
                  )
                ],
              ))
        ]),
      ),
    );
  }
}

class CustomContantFooter extends StatelessWidget {
  const CustomContantFooter({
    super.key,
    this.icon,
    this.color,
    this.size = 24,
    required this.text,
  });
  final IconData? icon;
  final String text;
  final Color? color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: const Color(0xFF346454), width: 1.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: size,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    ));
  }
}
