import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/model/general/mangement_button.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomButtonMangament extends StatelessWidget {
  const CustomButtonMangament(
      {super.key, this.onPressed, required this.mangementButtons});

  final void Function()? onPressed;
  final MangementButton mangementButtons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorsApp.MAINCOLOR,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(2),
                bottomRight: Radius.circular(2),
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2),
              ),
            ),
            child: MaterialButton(
              height: 70,
              minWidth: 280,
              onPressed: onPressed,
              color: ColorsApp.MAINCOLOR,
              child: CustomText(
                text: mangementButtons.textbutton,
                color: const Color(0xFFE6E6E6),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
