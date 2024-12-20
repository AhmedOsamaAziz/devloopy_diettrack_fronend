import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';

class CustomHeaderTableItem extends StatelessWidget {
  const CustomHeaderTableItem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: ColorsApp.MAINCOLOR,
        border: Border.all(color: ColorsApp.SecondaryColor, width: 1),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
