import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';

class FeatureDescription extends StatelessWidget {
  const FeatureDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome to the Feature Section of Nutritionist, your ultimate destination for all things nutrition and wellness.",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
