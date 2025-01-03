import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/screens/admin/dashboard/entry_point.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/widgets/custom_text.dart';

class DesktopNavigationBar extends StatefulWidget {
  const DesktopNavigationBar({super.key});

  @override
  State<DesktopNavigationBar> createState() => _DesktopNavigationBarState();
}

class _DesktopNavigationBarState extends State<DesktopNavigationBar> {
  final List _listDrawer = DrawerModel.drawer;
  int activeIndex = 0; // Tracks the active navigation index

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const UpparAppBar(),
                      const SizedBox(height: 10),
                      Expanded(
                        child: GestureDetector(
                            child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _listDrawer.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          activeIndex = index;
                                        });
                                        log("Active index: $activeIndex");
                                      },
                                      child: UnderUppBar(
                                        drawerModel:
                                            _listDrawer[index], // Pass data
                                        activeIndex:
                                            activeIndex, // Pass activeIndex
                                        onTabChanged: (index) {
                                          setState(() {
                                            activeIndex =
                                                index; // Update activeIndex
                                          });
                                        },
                                      ),
                                    );
                                  },
                                ))),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}

class UpparAppBar extends StatelessWidget {
  const UpparAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsApp.AppBarColor),
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: Image.asset(
                      'assets/images/Abstracdesign.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 15,
                        child: Image.asset(
                          'assets/images/icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      CustomText(
                        text: 'Join Our Personalized Nutrition Demo For Free',
                        fontWeight: FontWeight.normal,
                        fontFamily: FontsApp.fontFamilyUrbanist,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        height: 10,
                        width: 13,
                        child: Image.asset(
                          'assets/images/arrow.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  //
                  //? Image Right in Abb Bar
                  SizedBox(
                    child: SizedBox(
                      height: 30,
                      width: 150,
                      child: Image.asset(
                        'assets/images/path.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class UnderUppBar extends StatelessWidget {
  const UnderUppBar({
    super.key,
    required this.drawerModel,
    required this.activeIndex, // Add activeIndex here
    required this.onTabChanged, // Add callback to update the parent activeIndex
  });

  final DrawerModel drawerModel;
  final int activeIndex;
  final ValueChanged<int> onTabChanged; // Callback function

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 140,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(Assets.imagesLogo))),
              ),
              const Spacer(),
              Expanded(
                child: SizedBox(
                  height: 27,
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  child: Row(
                    spacing: 20,
                    children: [
                      _buildNavButton(context, 'Home', 0),
                      _buildNavButton(context, 'About', 1),
                      _buildNavButton(context, 'Team', 2),
                      _buildNavButton(context, 'Process', 3),
                      _buildNavButton(context, 'Pricing', 4),
                      _buildNavButton(context, 'Blog', 5),
                      _buildNavButton(context, 'Contact', 6),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5.0), // Adjust as needed
                        ),
                        color: ColorsApp.SecondaryColor,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5.0), // Adjust as needed
                        ),
                        color: ColorsApp.SecondaryColor,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const EntryPoint()),
                          );
                        },
                        child: const Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String buttonText, int index) {
    return CustomText(
      onTap: () {
        onTabChanged(index); // Call the parent callback to update activeIndex
        // Navigate to the corresponding page
        switch (buttonText) {
          case 'Home':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()));
            break;
          case 'About':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutPage()));
            break;
          case 'Team':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TeamPage()));
            break;
          case 'Process':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProcessPage()));
            break;
          case 'Pricing':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PricingPage()));
            break;
          case 'Blog':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BlogPage()));
            break;
          case 'Contact':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ContactUsPage()));
            break;
        }
      },
      text: buttonText,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: onTabChanged == index
          ? ColorsApp.MAINCOLOR // Active button color
          : ColorsApp.SecondaryColor, // Default button color
    );
  }
}
