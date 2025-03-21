import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/shared/Footer/widget/build_navButton_footer.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

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
      width: double.infinity,
      height: 299.0,
      decoration: const BoxDecoration(
        color: ColorsApp.MAINCOLOR,
      ),
      child: Container(
        width: double.infinity,
        height: 299.0,
        decoration: const BoxDecoration(
          color: ColorsApp.MAINCOLOR,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 130.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        spacing: 10.0,
                        children: [
                          Image.asset(
                            Assets.imagesIconFlower,
                            color: ColorsApp.SecondaryColor,
                            height: 40.0,
                            width: 40.0,
                          ),
                          const Text(
                            "DietTrack",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            // if (isLoggedIn)
                            BuildNavbuttonFooter(
                                text: 'Home', index: 0, page: HomePage()),
                            BuildNavbuttonFooter(
                                text: 'About', index: 1, page: AboutPage()),
                            BuildNavbuttonFooter(
                                text: 'Team', index: 2, page: TeamPage()),
                            BuildNavbuttonFooter(
                                text: 'Process', index: 3, page: ProcessPage()),
                            BuildNavbuttonFooter(
                                text: 'Pricing', index: 4, page: PricingPage()),
                            BuildNavbuttonFooter(
                                text: 'Blog', index: 5, page: BlogPage()),
                            BuildNavbuttonFooter(
                                text: 'Contact',
                                index: 6,
                                page: ContactUsPage()),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                height: 77.0,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: const Color(0xFF2C5446),
                  border: Border.all(
                    color: const Color(0xFF346454),
                    width: 1.0,
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 50.0),
                child: Container(
                  height: 87.0,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 12.0,
                  ),
                  child: const CustomContactDev(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //     },
    //   );
    // });
  }
}

class CustomContactDev extends StatelessWidget {
  const CustomContactDev({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: const Color(0xFF346454),
                  width: 1.0,
                ),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.mail,
                  color: ColorsApp.TitleColorFeatures,
                  size: 18.0,
                ),
                title: Text(
                  "Ahmed.Madkour@gmail.com",
                  style: TextStyle(
                    fontSize: 9.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: const Color(0xFF346454),
                  width: 1.0,
                ),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: ColorsApp.TitleColorFeatures,
                  size: 20.0,
                ),
                title: Text(
                  "+002000020200",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: const Color(0xFF346454),
                  width: 1.0,
                ),
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: ColorsApp.TitleColorFeatures,
                  size: 20.0,
                ),
                title: Text(
                  "SomeWhere in the World",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.copyright,
                  color: Color(0xFFFFFFFF),
                  size: 16.0,
                ),
                Text(
                  "2024 DevLoopy.com.All rights reserved",
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF),
                    fontSize: getResponsiveFontSize(context, fontSize: 10),
                    fontWeight: FontWeight.w400,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
