import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/screens/admin/constants/responsive.dart';
import 'package:ui/screens/admin/sidemenu/theme_tabs.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/about_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/services/service_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/team_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/testmimonials_dashboard.dart';

import '../../dashboard_screen/sidemenu/menu_tile.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Responsive.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDefaults.padding,
                    ),
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
                  child: SvgPicture.asset(
                    'assets/images/Logo.svg',
                    height: 40,
                  ),
                ),
              ],
            ),
            const Divider(),
            gapH16,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                ),
                child: ListView(
                  children: [
                    MenuTile(
                      isActive: true,
                      title: "Dashboard",
                      activeIconSrc: "assets/icons/home_filled.svg",
                      inactiveIconSrc: "assets/icons/home_light.svg",
                      onPressed: () {},
                    ),
                    ExpansionTile(
                      leading:
                          SvgPicture.asset("assets/icons/diamond_light.svg"),
                      title: Text(
                        "Homepage",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      children: [
                        // MenuTile(
                        //   isSubmenu: true,
                        //   title: "Introduction",
                        //   onPressed: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //         builder: (context) =>
                        //             const IntroductionDashboard()));
                        //   },
                        // ),
                        // MenuTile(
                        //   isSubmenu: true,
                        //   title: "Features",
                        //   count: 16,
                        //   onPressed: () {},
                        // ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Blogs",
                          count: 16,
                          onPressed: () {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) =>
                            //           const BlogListDashBoard()));
                          },
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Testimonials",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const TestimonialsDashBoard()));
                          },
                        ),
                        MenuTile(
                          isSubmenu: true,
                          title: " Our Pricing",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceDashBoard()));
                          },
                        ),
                      ],
                    ),

                    // About
                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: Text(
                        "About",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Our Story",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AboutDashBoard()));
                          },
                        ),
                      ],
                    ),

                    // Team

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: Text(
                        "Team",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
                        ),
                      ),
                      children: [
                        MenuTile(
                          isSubmenu: true,
                          title: "Management Team",
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TeamDashBoard()));
                          },
                        ),
                      ],
                    ),
                    //Prcess

                    ExpansionTile(
                      leading: SvgPicture.asset(
                          "assets/icons/profile_circled_light.svg"),
                      title: Text(
                        "Proocess",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
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
                      title: Text(
                        "Pricing",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
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
                      title: Text(
                        "Blogs",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).textTheme.bodyMedium!.color,
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
