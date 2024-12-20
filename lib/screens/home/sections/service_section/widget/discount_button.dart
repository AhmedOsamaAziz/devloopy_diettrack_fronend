import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_text.dart';

class DiscountButton extends StatelessWidget {
  const DiscountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: ScreenSize.isLarge
        ? 1596
        : ScreenSize.isMedium
            ? 1000
            : 313,
    height: ScreenSize.isLarge
        ? 820
        : ScreenSize.isMedium
            ? 400
            : 130,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0), // Adjust as needed
                ),
                color: ColorsApp.MAINCOLOR,
                onPressed: () {},
                child: const Text(
                  'Monthly',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                )),
            const SizedBox(width: 10),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0) // Ajust as needed
                    ),
                color: ColorsApp.OUTLINECOLOR,
                onPressed: () {},
                child: CustomText(
                  text: 'Yearly',
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                )),
            const SizedBox(height: 20),
          ],
        ),
        const SizedBox(height: 10),
        CustomText(
          text: 'Save 50% on Yearly',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ],
    ),
  );
}

  }
 