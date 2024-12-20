import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class TestmonialsDescription extends StatelessWidget {
  const TestmonialsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Our satisfied clients share their success stories and experiences on their journey to better health and well-being.",
      style: TextStyle(
        fontSize: ScreenSize.isLarge ? 18 : 14,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
