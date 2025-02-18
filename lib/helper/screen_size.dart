import 'package:flutter/material.dart';

enum Screen { large, medium, small }

class ScreenSize {
  static const int _largeScreen = 1400; // >=
  static const int _mediumScreen = 810; // max <=
  static const int _smallScreen = 500; // max <=

  static bool isLarge = false;
  static bool isMedium = false;
  static bool isSmall = false;

  static double width = 0.0;
  static double height = 0.0;

  static getScreenSize(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    if (width >= _largeScreen) {
      isLarge = true;
      isMedium = false;
      isSmall = false;
    } else if (width >= _mediumScreen) {
      isLarge = false;
      isMedium = true;
      isSmall = false;
    } else {
      isLarge = false;
      isMedium = false;
      isSmall = true;
    }
  }
}
