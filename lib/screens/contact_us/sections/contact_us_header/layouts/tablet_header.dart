import 'package:flutter/material.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/widget/contact_us_description.dart';
import 'package:ui/screens/contact_us/sections/contact_us_header/widget/contact_us_title.dart';

class TabletHeaderContactUsSection extends StatelessWidget {
  const TabletHeaderContactUsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 900),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 1280,
                height: 250,
                decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
                child: Image.asset(
                  'assets/images/backgroundcard.png',
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/images/hedaer.png',
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              const Positioned(top: 150, child: ContactUsTitle()),
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              color: const Color(0xffF6FBE9),
              child: const ContactUsDescription()),
        ],
      ),
    );
  }
}
