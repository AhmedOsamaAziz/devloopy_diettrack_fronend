import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';

class CustomButtonSinUp extends StatelessWidget {
  const CustomButtonSinUp(
      {super.key,
      this.onPressed,
      required this.text,
      required int height,
      required Color colorbtn,
      required FontWeight fontWeight,
      required Color colortxt});

  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        color: ColorsApp.AppBarColor,
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ));
  }
}
