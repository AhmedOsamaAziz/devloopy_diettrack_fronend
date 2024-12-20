import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class TitleService extends StatelessWidget {
  const TitleService({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Pricing',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 22),
        fontWeight: FontWeight.w500,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
