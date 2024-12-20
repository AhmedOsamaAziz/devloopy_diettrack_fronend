import 'package:flutter/material.dart';

class CustomHeaderHowItWork extends StatelessWidget {
  const CustomHeaderHowItWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 180, left: 180),
        padding: const EdgeInsets.only(right: 180, left: 180),
        width: 1596,
        height: 136,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            Text(
              'How It Works',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
            ),
            Text(
              "We provide a step-by-step guide on how to get started on your journey towards better health and nutrition. We are here to simplify the process and make it easy for you to navigate our platform and access the resources you need to achieve your \n                                                                               goals. Here's how it works",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
