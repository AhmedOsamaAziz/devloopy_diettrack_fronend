import 'package:flutter/material.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "At Nutritionist, we take pride in our accomplishments and the positive impact we have made on the lives of our . Here are some of our notable achievements",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    );
  }
}
