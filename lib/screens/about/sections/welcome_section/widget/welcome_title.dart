import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to Nutritions ',
      style: TextStyle(
          fontSize: ScreenSize.isLarge
              ? 48
              : ScreenSize.isMedium
                  ? 24
                  : 18,
          fontWeight: FontWeight.w600),
    );
  }
}
