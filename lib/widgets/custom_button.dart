// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/model/general/mangement_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.colorbtn,
    this.fontWeight,
    this.colortxt,
    this.fontSize = 14.0,
    this.height = 27,
    this.width,
    this.mangementButton,
  });

  final String text;
  final void Function()? onPressed;
  final Color? colorbtn;
  final Color? colortxt;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final double? width;
  final MangementButton? mangementButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: ColorsApp.TextColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SizedBox(
        height: height,
        width: width,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Adjust as needed
            ),
            color: colorbtn,
            onPressed: onPressed,
            child: Text(
              mangementButton?.textbutton ?? text,
              style: TextStyle(
                color: colortxt,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            )),
      ),
    );
  }
}
