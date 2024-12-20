import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/welcome_section/widget/welcome_custom_header.dart';

class TabletWelcomeSection extends StatelessWidget {
  const TabletWelcomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 800,
        width: 1280,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Image.asset('assets/images/about-main.png',
                    width: 1596.5, height: 300, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 30),
            const WelcomeCustomHeader()
          ],
        ),
      ),
    );
  }
}
