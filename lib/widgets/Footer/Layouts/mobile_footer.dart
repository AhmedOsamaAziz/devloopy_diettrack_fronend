import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/widgets/Footer/widget/build_navButton_footer.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<bool>(
    //     future: BlocProvider.of<LoginCubit>(context).isFirstLogin(),
    //     builder: (context, snapshot) {
    //       final isFirstLogin = snapshot.data ?? false;

    //       // Don't show footer for first login
    //       if (isFirstLogin) {
    //         return Container(); // Return an empty container if it's the first login
    //       }
    //       return FutureBuilder<bool>(
    //         future: BlocProvider.of<LoginCubit>(context).isLoggedIn(),
    //         builder: (context, snapshot) {
    //           // final isLoggedIn = snapshot.data ?? false;
    return Container(
      width: 420,
      height: 400,
      decoration: const BoxDecoration(
        color: ColorsApp.MAINCOLOR,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          const Expanded(
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 35.0,
                  color: ColorsApp.TitleColorFeatures,
                ),
                Text(
                  "DietTrack",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                //   const Spacer(),
                //   const Text(
                //     "Go To Top",
                //     style: TextStyle(
                //       color: Color(0xFFFFFFFF),
                //       fontSize: 15.0,
                //       fontWeight: FontWeight.w500,
                //       fontFamily: FontsApp.fontFamilyUrbanist,
                //     ),
                //   ),
                //   IconButton(
                //       iconSize: 15.0,
                //       style: const ButtonStyle(
                //           backgroundColor: WidgetStatePropertyAll<Color>(
                //         ColorsApp.AppBarColor,
                //       )),
                //       onPressed: () {},
                //       icon: const Icon(
                //         Icons.arrow_upward,
                //         color: Color(0xFFFFFFFF),
                //       ))
              ],
            ),
          ),
          const FittedBox(
            child: Row(
              children: [
                BuildNavbuttonFooter(text: 'Home', index: 0, page: HomePage()),
                BuildNavbuttonFooter(
                    text: 'About', index: 1, page: AboutPage()),
                BuildNavbuttonFooter(text: 'Team', index: 2, page: TeamPage()),
                BuildNavbuttonFooter(
                    text: 'Process', index: 3, page: ProcessPage()),
                BuildNavbuttonFooter(
                    text: 'Pricing', index: 4, page: PricingPage()),
                BuildNavbuttonFooter(text: 'Blog', index: 5, page: BlogPage()),
                BuildNavbuttonFooter(
                    text: 'Contact', index: 6, page: ContactUsPage()),
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
                  CustomContactFooter(
                      icon: Icons.mail,
                      color: ColorsApp.TitleColorFeatures,
                      text: "Ahmed.Madkour@gmail.com"),
                  CustomContactFooter(
                      icon: Icons.phone,
                      color: ColorsApp.TitleColorFeatures,
                      text: "+002000020200"),
                  CustomContactFooter(
                    icon: Icons.location_on,
                    color: ColorsApp.TitleColorFeatures,
                    text: "SomeWhere in the World",
                  ),
                  CustomContactFooter(
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
    //     },
    //   );
    // });
  }
}

class CustomContactFooter extends StatelessWidget {
  const CustomContactFooter({
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
