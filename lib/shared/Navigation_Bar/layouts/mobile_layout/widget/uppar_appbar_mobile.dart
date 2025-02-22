import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/shared/custom_text.dart';
 
class UpparAppBarMobile extends StatelessWidget {
  const UpparAppBarMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.only(top: 15),
          margin: const EdgeInsets.only(top: 30),
          width: 320,
          height: 40,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -7,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorsApp.AppBarColor,
                      borderRadius: BorderRadius.circular(3),
                      border:
                          Border.all(color: ColorsApp.AppBarColor, width: 1.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
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
                ),
              ),
              Positioned(
                right: -40,
                child: SizedBox(
                  //? Image Lefit in Abb Bar
                  height: 30,
                  width: 100,
                  child: Image.asset(
                    'assets/images/Abstracdesign.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: -40,
                child: SizedBox(
                  //? Image Lefit in Abb Bar
                  height: 30,
                  width: 100,
                  child: Image.asset(
                    'assets/images/Abstracdesign.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
