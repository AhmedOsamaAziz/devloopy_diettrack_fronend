// ignore: file_names
import 'package:flutter/material.dart';
import '../../../Constants/constants.dart';

class CustomTopHeader extends StatelessWidget {
  const CustomTopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 1596,
                height: 300,
                decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
                child: Image.asset(
                  'assets/images/backgroundcard.png',
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/images/hedaer.png',
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              const Positioned(
                top: 160,
                child: Text(
                  'Your Journey to Health and Wellness',
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                      color: ColorsApp.MAINCOLOR),
                ),
              ),
            ],
          ),
          Container(
            width: 1596,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 100),
            color: const Color(0xffF6FBE9),
            child: const Text(
              '''At Nutritionist, we believe in providing a personalized and comprehensive approach to help you achieve your health and wellness goals. Our "How it Works" process is designed to guide you through each step of your journey, ensuring that you receive the support, knowledge, and tools you need to succeed. Here's a detailed breakdown of our process:''',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.MAINCOLOR),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
