// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/screens/admin/constants/config.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/screens/dashboard_screen/archived/about_dashboard.dart';
import 'package:ui/screens/dashboard_screen/archived/team_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screens/service/service_dashboard.dart';
import 'package:ui/screens/dashboard_screen/screens/testimonials/testimonials_dashboard.dart';

import 'icon_tile.dart';
import 'theme_icon_tile.dart';

class TabSidebar extends StatelessWidget {
  final Function(Widget) onPageSelected;
  const TabSidebar({super.key, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      color: ColorsApp.MAINCOLOR,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDefaults.padding,
                vertical: AppDefaults.padding * 1.5),
            child: SvgPicture.asset(AppConfig.logo),
          ),
          gapH16,
          Expanded(
            child: SizedBox(
              width: 48,
              child: ListView(
                children: [
                  IconTile(
                      isActive: true,
                      activeIconSrc: "assets/icons/home_filled.svg",
                      inactiveIconSrc: "assets/icons/home_light.svg",
                      onPressed:
                          () {} //=> onPageSelected(const BlogListDashBoard()),
                      ),
                  gapH4,
                  IconTile(
                    isActive: false,
                    activeIconSrc: "assets/icons/diamond_filled.svg",
                    inactiveIconSrc: "assets/icons/diamond_light.svg",
                    onPressed: () =>
                        onPageSelected(const TestimonialsDashBoard()),
                  ),
                  gapH4,
                  IconTile(
                    isActive: false,
                    activeIconSrc: "assets/icons/profile_circled_filled.svg",
                    inactiveIconSrc: "assets/icons/profile_circled_light.svg",
                    onPressed: () => onPageSelected(const ServiceDashBoard()),
                  ),
                  gapH4,
                  IconTile(
                    isActive: false,
                    activeIconSrc: "assets/icons/store_light.svg",
                    inactiveIconSrc: "assets/icons/store_filled.svg",
                    onPressed: () => onPageSelected(const AboutDashBoard()),
                  ),
                  gapH4,
                  IconTile(
                    isActive: false,
                    activeIconSrc: "assets/icons/pie_chart_filled.svg",
                    inactiveIconSrc: "assets/icons/pie_chart_light.svg",
                    onPressed: () => onPageSelected(const TeamDashBoard()),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              IconTile(
                isActive: false,
                activeIconSrc: "assets/icons/arrow_forward_light.svg",
                onPressed: () {},
              ),
              const SizedBox(
                width: 48,
                child: Divider(thickness: 2),
              ),
              gapH4,
              IconTile(
                isActive: false,
                activeIconSrc: "assets/icons/help_light.svg",
                onPressed: () {},
              ),
              gapH4,
              ThemeIconTile(
                isDark: false,
                onPressed: () {},
              ),
              gapH16,
            ],
          )
        ],
      ),
    );
  }
}
