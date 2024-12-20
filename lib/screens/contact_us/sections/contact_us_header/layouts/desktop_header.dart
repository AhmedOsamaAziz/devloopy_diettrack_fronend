import 'package:flutter/material.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/widget/contact_us_description.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/widget/contact_us_title.dart';

class DesktopContactUsSection extends StatelessWidget {
  const DesktopContactUsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 1596,
              height: 250,
              decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
              child: Image.asset(
                'assets/images/backgroundcard.png',
              ),
            ),
            Positioned(
              top: 30,
              child: Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(),
                child: Image.asset(
                  'assets/images/hedaer.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ),
            const Positioned(
              top: 150,
              child: ContactUsTitle(),
            ),
          ],
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            color: const Color(0xffF6FBE9),
            child: const ContactUsDescription()),
        const SizedBox(height: 80),
      ],
    );
  }
}
