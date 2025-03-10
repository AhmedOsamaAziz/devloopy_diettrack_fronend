// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/screens/admin/constants/responsive.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/about_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/service_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/team_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/testmimonials_dashboard.dart';

import 'package:ui/screens/dashboard_screen/sidemenu/menu_tile.dart';
import 'package:ui/screens/admin/sidemenu/theme_tabs.dart';
import 'package:ui/shared/custom_text.dart';

class SiderMenu extends StatelessWidget {
  final Function(Widget) onPageSelected;
  const SiderMenu({super.key, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 250,
        minWidth: 250,
      ),
      child: Drawer(
        backgroundColor: ColorsApp.AppBarColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (Responsive.isMobile(context))
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon:   Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
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
                        Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
                        gapW16,
                        CustomText(
                          text: 'Dashboard',
                          color: ColorsApp.TitleColorFeatures,
                          fontSize: getResponsiveFontSize(context,
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 12)),
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
                      // horizontal: AppDefaults.padding,
                      ),
                  child: ListView(
                    children: [
                      ExpansionTile(
                        leading:
                        Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
                        title: const Text(
                          "Home page",
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
                              onPressed: () {}
                              // onPageSelected(const BlogListDashBoard()),
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
                        leading:  Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
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
                        leading:   Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
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
                        leading:  Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
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
                        leading:  Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
                        title: const Text(
                          "Services ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: ColorsApp.OUTLINECOLOR,
                          ),
                        ),
                        children: [
                          MenuTile(
                            isSubmenu: true,
                            title: "Service Item",
                            onPressed: () =>
                                onPageSelected(const ServiceItemDashboard()),
                          ),
                        ],
                      ),

                      // Blogs

                      ExpansionTile(
                        leading:   Image.asset(
                          'assets/images/logo.png',
                          height: 40,
                          width: 40,
                        ),
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
                            title: "All Blogs",
                            onPressed: () =>
                                onPageSelected(const BlogDashboard()),
                          ),
                          // MenuTile(
                          //   isSubmenu: true,
                          //   title: "Weight Loss Tips",
                          //   onPressed: () =>
                          //       onPageSelected(const BlogListDashBoard()),
                          // ),
                          // MenuTile(
                          //   isSubmenu: true,
                          //   title: "Weight Loss Tips",
                          //   onPressed: () {},
                          // ),
                          // MenuTile(
                          //   isSubmenu: true,
                          //   title: "Weight Loss Tips",
                          //   onPressed: () {},
                          // ),
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
                    // const ThemeTabs(),
                    gapH8,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
