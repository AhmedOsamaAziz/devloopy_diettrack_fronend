import 'package:flutter/material.dart';

import 'constants.dart';

class CustomHeaderTitle extends StatelessWidget {
  const CustomHeaderTitle({
    super.key,
    required this.title,
    this.fontSize,
    required this.subTitle,
  });

  final String title;
  final double? fontSize;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: FontsApp.fontFamilyUrbanist,
            color: ColorsApp.MAINCOLOR,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: FontsApp.fontFamilyUrbanist,
            color: ColorsApp.TextColorFeatures,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
