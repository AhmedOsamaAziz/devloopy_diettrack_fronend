import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/model/general/card_process.dart';
import 'package:ui/widgets/custom_text.dart';

class TabletCustomCardProcess extends StatelessWidget {
  const TabletCustomCardProcess({
    super.key,
    required this.cardProcess,
  });

  final CardProcess cardProcess;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      width: 1280,
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              width: 773,
              height: 406,
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
                    clipBehavior: Clip.none,
                    fit: BoxFit.scaleDown,
                    child: Card(
                      child: Container(
                        height: 350,
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
                                    width: 70,
                                    height: 70,
                                    child: Image.asset(
                                      cardProcess.image,
                                      width: 70,
                                      height: 70,
                                    ),
                                    // cardData.image,
                                  ),
                                  const SizedBox(width: 15),
                                  CustomText(
                                      text: cardProcess.text,
                                      color: ColorsApp.MAINCOLOR,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ],
                              ),
                              const SizedBox(height: 20),
                              CustomText(
                                text: cardProcess.paraghaph,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: ColorsApp.TextColorFeatures,
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
