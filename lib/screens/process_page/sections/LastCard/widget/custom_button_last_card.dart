import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class CustomButtonLastCard extends StatelessWidget {
  const CustomButtonLastCard({super.key});
  final String textBtn = "Join Us Now";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 40 : 10),
      height: 50,
      width: ScreenSize.isLarge ? 100 : 360,
      child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Adjust as needed
          ),
          color: ColorsApp.SecondaryColor,
          onPressed: () {},
          child: Text(
            textBtn,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          )),
    );
  }
}
