import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class ProcessTitleHowWorkIt extends StatelessWidget {
  const ProcessTitleHowWorkIt({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'How It Works',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 23),
          fontWeight: FontWeight.w600),
    );
  }
}
