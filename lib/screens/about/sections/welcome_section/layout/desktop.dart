import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/screens/about/sections/welcome_section/widget/welcome_custom_header.dart';

class DesktopWelcomeSection extends StatelessWidget {
  const DesktopWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
          width: 1596.5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  child: Image.asset(Assets.imagesAboutMain,
                      width: 1596.5, height: 300, fit: BoxFit.cover),
                ),
              ),
              const WelcomeCustomHeader()
            ],
          ),
        ),
      ),
    );
  }
}
