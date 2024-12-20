import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class FeatureTitle extends StatelessWidget {
  const FeatureTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Features',
      style: TextStyle(
        fontSize: ScreenSize.isLarge ? 48 : 40,
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
