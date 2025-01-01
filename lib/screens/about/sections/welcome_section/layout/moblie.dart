import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/welcome_section/widget/welcome_custom_header.dart';

class MoblieWelcomeSection extends StatelessWidget {
  const MoblieWelcomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FittedBox(
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  child: Image.asset('assets/images/about-main.png',
                      width: 358.5, height: 100, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 10),
              const WelcomeCustomHeader()
            ],
          ),
        ),
      ),
    );
  }
}
