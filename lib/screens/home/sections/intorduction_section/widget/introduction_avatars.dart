import 'package:flutter/material.dart';

class IntroductionAvatars extends StatelessWidget {
  const IntroductionAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    return const RepaintBoundary(
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              RepaintBoundary(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                      'assets/images/circle_avatar2.png'), // Replace with your image
                  backgroundColor: Colors.transparent,
                ),
              ),
              Positioned(
                left: 25, // Adjust the position as needed
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                      'assets/images/circle_avatar3.png'), // Replace with your image
                  backgroundColor: Colors.transparent,
                ),
              ),
              Positioned(
                left: 45, // Adjust the position as needed
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                      'assets/images/circle_avatar2.png'), // Replace with your image
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
