import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/custom_text.dart';
 
class AskYourQuestion extends StatelessWidget {
  const AskYourQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 06,
            height: ScreenSize.isLarge
                ? 550
                : ScreenSize.isMedium
                    ? 620
                    : 500,
            color: ColorsApp.OUTLINECOLOR,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(top: 30),
                    width: 100,
                    child: SvgPicture.asset(
                      'assets/images/Logo.svg',
                    )),
                const SizedBox(height: 50),
                CustomText(
                  text: 'Ask your question',
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.MAINCOLOR,
                ),
                CustomText(
                  text: 'Feel Free to Ask questions on anytime',
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                ),
                const SizedBox(height: 50),
                Container(
                  width: 178,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorsApp.SecondaryColor,
                  ),
                  child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(3.0), // Adjust as needed
                      ),
                      onPressed: () {},
                      child: Text(
                        'Ask A Question',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 12),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
