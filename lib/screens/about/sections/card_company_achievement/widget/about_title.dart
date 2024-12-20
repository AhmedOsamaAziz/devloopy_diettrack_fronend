import 'package:flutter/material.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Company Achievements',
      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    );
  }
}
