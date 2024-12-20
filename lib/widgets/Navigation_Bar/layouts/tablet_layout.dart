import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/widgets/custom_text.dart';

import '../../../screens/team_page/team_page.dart';

class TabletNavigationBar extends StatelessWidget {
  const TabletNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            Expanded(child: UpparAppBar()),
            SizedBox(height: 10),
            UnderUppBar(),
          ],
        ),
      ),
    );
  }
}

class UpparAppBar extends StatelessWidget {
  const UpparAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: ColorsApp.AppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            //? Image Lefit in Abb Bar
            height: 30,
            width: 140,
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
              width: 140,
              child: Image.asset(
                'assets/images/path.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class UnderUppBar extends StatelessWidget {
  const UnderUppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 1010,
      child: FittedBox(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            const SizedBox(width: 50),
            SizedBox(
              height: 27,
              width: 500,
              child: Row(
                children: [
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage()));
                      },
                      text: 'Home',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: ColorsApp.SecondaryColor),
                  const SizedBox(width: 15),
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AboutPage()));
                      },
                      text: 'About',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  const SizedBox(width: 15),
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TeamPage()));
                      },
                      text: 'Team',
                      fontSize: 18,
                      color: Colors.white),
                  const SizedBox(width: 15),
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProcessPage()));
                      },
                      text: 'Process',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  const SizedBox(width: 15),
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PricingPage()));
                      },
                      text: 'Pricing',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                  const SizedBox(width: 15),
                  CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BlogPage()));
                      },
                      text: 'Blog',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white),
                  const SizedBox(width: 15),
                  Expanded(
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5.0), // Adjust as needed
                        ),
                        color: ColorsApp.SecondaryColor,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ContactUsPage()));
                        },
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
