// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/screens/admin/constants/ghaps.dart';
import 'package:ui/screens/admin/constants/responsive.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/about_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_list_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/service_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/team_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/testmimonials_dashboard.dart';

import 'package:ui/screens/dashboard_screen/sidemenu/menu_tile.dart';
import 'package:ui/screens/admin/sidemenu/theme_tabs.dart';
import 'package:ui/widgets/custom_text.dart';

class SiderMenu extends StatelessWidget {
  final Function(Widget) onPageSelected;
  const SiderMenu({super.key, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      backgroundColor: ColorsApp.AppBarColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Responsive.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset('assets/icons/close_filled.svg'),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDefaults.padding,
                    vertical: AppDefaults.padding * 1.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Logo.svg',
                        height: 40,
                      ),
                      gapW20,
                      CustomText(
                        text: 'Dashboard',
                        color: ColorsApp.TitleColorFeatures,
                        fontSize: getResponsiveFontSize(context, fontSize: 16),
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(color: ColorsApp.MAINCOLOR),
            gapH16,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                ),
                child: ListView(
                  children: [
                    ExpansionTile(
                      leading:
                          SvgPicture.asset("assets/icons/diamond_light.svg"),
                      title: const Text(
                        "Homepage",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        //! Home
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Blogs",
                          onPressed: () =>
                              onPageSelected(const BlogListDashBoard()),
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Testimonials",
                          onPressed: () =>
                              onPageSelected(const TestimonialsDashBoard()),
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: " Our Pricing",
                          onPressed: () =>
                              onPageSelected(const ServiceDashBoard()),
                        ),
                      ],
                    ),

                    // About
                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: const Text(
                        "About",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Story",
                          onPressed: () =>
                              onPageSelected(const AboutDashBoard()),
                        ),
                      ],
                    ),

                    // Team

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: const Text(
                        "Team",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Management Team",
                          onPressed: () =>
                              onPageSelected(const TeamDashBoard()),
                        ),
                      ],
                    ),
                    //Prcess

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: const Text(
                        "Proocess",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Process",
                          onPressed: () {},
                        ),
                      ],
                    ),

                    // pricing

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: const Text(
                        "Pricing",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Plan & Pricing",
                          onPressed: () {},
                        ),
                      ],
                    ),

                    // Blogs

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: const Text(
                        "Blogs",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Weight Loss Tips",
                          onPressed: () {},
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Weight Loss Tips",
                          onPressed: () {},
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Weight Loss Tips",
                          onPressed: () {},
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Weight Loss Tips",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                children: [
                  if (Responsive.isMobile(context)) gapH8,
                  const Divider(),
                  gapH20,
                  const ThemeTabs(),
                  gapH8,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
