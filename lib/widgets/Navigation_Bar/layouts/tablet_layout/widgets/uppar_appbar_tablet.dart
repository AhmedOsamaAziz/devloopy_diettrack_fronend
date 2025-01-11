import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/widgets/custom_text.dart';

class UpparAppBarTablet extends StatelessWidget {
  const UpparAppBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorsApp.AppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
            width: 140,
            child: Image.asset(
              'assets/images/Abstracdesign.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 15,
                child: Image.asset(
                  'assets/images/icon.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              CustomText(
                text: 'Join Our Personalized Nutrition Demo For Free',
                fontWeight: FontWeight.normal,
                fontFamily: FontsApp.fontFamilyUrbanist,
                fontSize: 11,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 10,
                width: 13,
                child: Image.asset(
                  'assets/images/arrow.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
            width: 140,
            child: Image.asset(
              'assets/images/path.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
