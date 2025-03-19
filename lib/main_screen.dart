import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/cubits/navigation_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/shared/Navigation_Bar/advertise_bar.dart';
import 'package:ui/shared/Navigation_Bar/advertise_bar_mobile.dart';
import 'package:ui/shared/Navigation_Bar/our_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // List of pages corresponding to tabs.
  final List<Widget> pages = const [
    HomePage(),
    AboutPage(),
    TeamPage(),
    BlogPage(),
    ProcessPage(),
    PricingPage(),
    ContactUsPage(),
  ];

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'About';
      case 2:
        return 'Team';
      case 3:
        return 'Blog';
      case 4:
        return 'Process';
      case 5:
        return 'Pricing';
      case 6:
        return 'Contact';
      default:
        return 'App';
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    bool isDesktopOrTablet = ScreenSize.isLarge || ScreenSize.isMedium;

    return BlocBuilder<NavigationCubit, int>(
      builder: (context, activeIndex) {
        if (isDesktopOrTablet) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 120,
              centerTitle: true,
              title: Container(
                alignment: Alignment.center,
                height: 115,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AdvertiseBar(),
                    const SizedBox(height: 10),
                    OurNavBar(
                      activeIndex: activeIndex,
                      onTabChanged: (index) =>
                          context.read<NavigationCubit>().changeTab(index),
                    ),
                  ],
                ),
              ),
            ),
            body: IndexedStack(
              index: activeIndex,
              children: pages,
            ),
          );
        } else {
          // Mobile Layout: Use a drop-down menu in the AppBar.
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 120,
              elevation: 0,
              centerTitle: true,
              backgroundColor: ColorsApp.MAINCOLOR,
              title: Column(
                children: [
                  const AdvertiseBarMobile(),
                  DropdownButton<int>(
                    value: activeIndex,
                    dropdownColor: ColorsApp.MAINCOLOR,
                    icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.white),
                    underline: const SizedBox(),
                    onChanged: (int? newIndex) {
                      if (newIndex != null) {
                        context.read<NavigationCubit>().changeTab(newIndex);
                      }
                    },
                    items: List.generate(pages.length, (index) {
                      return DropdownMenuItem<int>(
                        value: index,
                        child: Text(
                          _getTitle(index),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            body: pages[activeIndex],
          );
        }
      },
    );
  }
}
