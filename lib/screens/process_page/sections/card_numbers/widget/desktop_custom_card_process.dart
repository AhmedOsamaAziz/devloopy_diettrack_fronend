import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/card_process.dart';
 import 'package:ui/widgets/custom_text.dart';

class DesktopCustomCardProcess extends StatelessWidget {
  const DesktopCustomCardProcess({
    super.key,
    required this.cardProcess,
  });

  final CardProcess cardProcess;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: 1596,
      height: 450,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              width: 773,
              height: 450,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      top: -60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          cardProcess.numImage,
                          height: 90,
                          width: 90,
                        ),
                      )),
                  FittedBox(
                    child: Card(
                      child: Container(
                        height: 250,
                        width: 700,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF6FBE9)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 54,
                                    width: 54,
                                    child: Image.asset(
                                      cardProcess.image,
                                      width: 54,
                                      height: 54,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  CustomText(
                                    text: cardProcess.text,
                                    color: ColorsApp.MAINCOLOR,
                                    fontWeight: FontWeight.bold,
                                    fontSize: getResponsiveFontSize(context,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Expanded(
                                child: CustomText(
                                  text: cardProcess.paraghaph,
                                  fontSize: getResponsiveFontSize(context,
                                      fontSize: 16),
                                  fontWeight: FontWeight.w500,
                                  color: ColorsApp.TextColorFeatures,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
