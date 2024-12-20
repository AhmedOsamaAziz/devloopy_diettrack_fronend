import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class QuestionsTitle extends StatelessWidget {
  const QuestionsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'FAQ',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
