import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_text.dart';

class PricingButton extends StatelessWidget {
  const PricingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 99,
              height: ScreenSize.isLarge ? 47 : 35,
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(3.0), // Adjust as needed
                  ),
                  color: ColorsApp.MAINCOLOR,
                  onPressed: () {},
                  child: Text(
                    'Monthly',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                        fontWeight: FontWeight.w400),
                  )),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 99,
              height: ScreenSize.isLarge ? 47 : 35,
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(3.0) // Ajust as needed
                      ),
                  color: ColorsApp.OUTLINECOLOR,
                  onPressed: () {},
                  child: CustomText(
                    text: 'Yearly',
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
        const SizedBox(height: 20),
        CustomText(
          text: 'Save 50% on Yearly',
          fontSize: getResponsiveFontSize(context, fontSize: 16),
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ],
    );
  }
}
