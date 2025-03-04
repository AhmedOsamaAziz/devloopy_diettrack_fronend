import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/shared/Footer/widget/build_navButton_footer.dart';
 
class TabletFooter extends StatelessWidget {
  const TabletFooter({super.key});

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
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 244.0,
      decoration: const BoxDecoration(
        color: ColorsApp.MAINCOLOR,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(spacing: 10.0,
                      children: [
                        Image.asset(
                          Assets.imagesIconFlower,
                          color: ColorsApp.SecondaryColor,
                          height: 30.0,
                          width: 30.0,
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
                  const Row(
                    spacing: 10,
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
                          text: 'Contact', index: 6, page: ContactUsPage()),
                    ],
                  ),
                  const SizedBox(width: 30.0),
                  const Row(
                    children: [
                      // const Text(
                      //   "Go To Top",
                      //   style: TextStyle(
                      //     color: Color(0xFFFFFFFF),
                      //     fontSize: 15.0,
                      //     fontWeight: FontWeight.w500,
                      //     fontFamily: FontsApp.fontFamilyUrbanist,
                      //   ),
                      // ),
                      // const Card(),
                      // IconButton(
                      //     iconSize: 15.0,
                      //     style: const ButtonStyle(
                      //         backgroundColor: WidgetStatePropertyAll<Color>(
                      //       ColorsApp.AppBarColor,
                      //     )),
                      //     onPressed: () {},
                      //     icon: const Icon(
                      //       Icons.arrow_upward,
                      //       color: Color(0xFFFFFFFF),
                      //     ))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 77.0,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: const Color(0xFF2C5446),
                  border:
                      Border.all(color: const Color(0xFF346454), width: 1.0)),
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Container(
                height: 87.0,
                width: 900,
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 20.0),
                child: const CustomContactDevTablet(),
              ),
            ),
          ],
        ),
      ),
    );
    //     },
    //   );
    // });
  }
}

class CustomContactDevTablet extends StatelessWidget {
  const CustomContactDevTablet({
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
                border: Border.all(color: const Color(0xFF346454), width: 1.0)),
            child: ListTile(
              leading: const Icon(
                Icons.mail,
                color: ColorsApp.TitleColorFeatures,
                size: 20.0,
              ),
              title: Text(
                "Ahmed.Madkour@gmail.com",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                  fontWeight: FontWeight.w500,
                  fontFamily: FontsApp.fontFamilyUrbanist,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const  EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: const Color(0xFF346454), width: 1.0)),
            child:   ListTile(
              leading: const Icon(
                Icons.phone,
                color: ColorsApp.TitleColorFeatures,
                size: 20.0,
              ),
              title: Text(
                "+002000020200",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 10),                  fontWeight: FontWeight.w500,
                  fontFamily: FontsApp.fontFamilyUrbanist,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: const Color(0xFF346454), width: 1.0)),
            child:   ListTile(
              leading: const Icon(
                Icons.location_on,
                color: ColorsApp.TitleColorFeatures,
                size: 20.0,
              ),
              title: Text(
                "SomeWhere in the World",
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 10),                  fontWeight: FontWeight.w500,
                  fontFamily: FontsApp.fontFamilyUrbanist,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          )),
            FittedBox(
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
                    fontSize: getResponsiveFontSize(context, fontSize: 10),                    fontWeight: FontWeight.w400,
                    fontFamily: FontsApp.fontFamilyUrbanist,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
