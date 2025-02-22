import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/shared/custom_text.dart';

 
class BuildNavbuttonFooter extends StatelessWidget {
  final String text;
  final int index;
  final Widget page;
  const BuildNavbuttonFooter({
    super.key,
    required this.text,
    required this.index,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: CustomText(
            text: text,
            fontSize: getResponsiveFontSize(context, fontSize: 11),
            fontWeight: FontWeight.w500,
            color: Colors.white),
      ),
    );
  }
}
