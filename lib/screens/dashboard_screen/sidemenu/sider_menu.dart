import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/screens/admin/constants/responsive.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/service/service_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/service_item/service_item_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/team_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/testmimonials_dashboard.dart';
import 'package:ui/screens/dashboard_screen/sidemenu/menu_tile.dart';
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDefaults.padding,
                      vertical: AppDefaults.padding * 1.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          Assets.imagesIconFlower,
                          color: ColorsApp.SecondaryColor,
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
                        iconColor: ColorsApp.white,
                        collapsedIconColor: ColorsApp.white,
                        leading: const Icon(
                          Icons.home,
                          size: 20,
                          color: ColorsApp.OUTLINECOLOR,
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
                          // MenuTile(
                          //     isSubmenu: true,
                          //     title: "Recent Blogs",
                          //     onPressed: () {
                          //       onPageSelected(const BlogDashboard());
                          //     }),
                          MenuTile(
                            isSubmenu: true,
                            title: "Our Testimonials",
                            onPressed: () =>
                                onPageSelected(const TestimonialsDashBoard()),
                          ),
                        ],
                      ),

                      // About

                      // ExpansionTile(
                      //   leading: const Icon(
                      //     Icons.info_outline_rounded,
                      //     size: 20,
                      //     color: ColorsApp.OUTLINECOLOR,
                      //   ),
                      //   title: const Text(
                      //     "About",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.w600,
                      //       color: ColorsApp.OUTLINECOLOR,
                      //     ),
                      //   ),
                      //   children: [
                      //     MenuTile(
                      //       isSubmenu: true,
                      //       title: "Our Story",
                      //       onPressed: () =>
                      //           onPageSelected(const AboutDashBoard()),
                      //     ),
                      //   ],
                      // ),

                      // Team

                      ExpansionTile(
                        iconColor: ColorsApp.white,
                        collapsedIconColor: ColorsApp.white,
                        leading: const Icon(
                          Icons.group,
                          size: 20,
                          color: ColorsApp.OUTLINECOLOR,
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

                      //Process

                      ExpansionTile(
                        iconColor: ColorsApp.white,
                        collapsedIconColor: ColorsApp.white,
                        leading: const Icon(
                          Icons.next_plan_rounded,
                          size: 20,
                          color: ColorsApp.OUTLINECOLOR,
                        ),
                        title: const Text(
                          "Process",
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
                        iconColor: ColorsApp.white,
                        collapsedIconColor: ColorsApp.white,
                        leading: const Icon(
                          Icons.price_change_rounded,
                          size: 20,
                          color: ColorsApp.OUTLINECOLOR,
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
                            title: " Services ",
                            onPressed: () => onPageSelected(ServiceDashBoard()),
                          ),
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
                        iconColor: ColorsApp.white,
                        collapsedIconColor: ColorsApp.white,
                        leading: const Icon(
                          Icons.book_online,
                          size: 20,
                          color: ColorsApp.OUTLINECOLOR,
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
