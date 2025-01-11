import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class ChooseButton extends StatelessWidget {
  const ChooseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      minWidth: ScreenSize.isLarge
          ? 412
          : ScreenSize.isMedium
              ? 333
              : 298,
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Adjust as needed
      ),
      color: ColorsApp.SecondaryColor,
      onPressed: () {},
      child: const Text(
        'Choose Button',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
