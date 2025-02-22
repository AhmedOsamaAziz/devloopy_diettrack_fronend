import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/model/general/card_process.dart';
import 'package:ui/shared/custom_text.dart';
 
class MobileCustomCardProcess extends StatelessWidget {
  const MobileCustomCardProcess({
    super.key,
    required this.cardProcess,
  });

  final CardProcess cardProcess;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: 1596,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
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
                      height: 550,
                      width: 1200,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF6FBE9)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  cardProcess.image,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 35),
                                CustomText(
                                    text: cardProcess.text,
                                    color: ColorsApp.MAINCOLOR,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50),
                              ],
                            ),
                            const SizedBox(height: 20),
                            CustomText(
                              text: cardProcess.paraghaph,
                              fontSize: 40,
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

          // ===============  2             ====================//
          // Expanded(
          //   child: Container(
          //     padding: const EdgeInsets.only(bottom: 20),
          //     width: 700,
          //     height: 406,
          //     child: Stack(
          //       clipBehavior: Clip.none,
          //       children: [
          //         Positioned(
          //             top: -60,
          //             child: Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Image.asset(
          //                 num2Image2,
          //                 height: 90,
          //                 width: 90,
          //               ),
          //             )),
          //         FittedBox(
          //           clipBehavior: Clip.none,
          //           fit: BoxFit.scaleDown,
          //           child: Card(
          //             child: Container(
          //               height: 550,
          //               width: 1200,
          //               padding: const EdgeInsets.all(20),
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(10),
          //                   color: const Color(0xffF6FBE9)),
          //               child: Padding(
          //                 padding: const EdgeInsets.only(
          //                     left: 20, right: 20, top: 20),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Row(
          //                       children: [
          //                         Container(
          //                           height: 150,
          //                           width: 150,
          //                           child: Image.asset(
          //                             image2,
          //                             height: 150,
          //                             width: 150,
          //                           ),
          //                           // cardData.image,
          //                         ),
          //                         const SizedBox(width: 35),
          //                         CustomText(
          //                             text: text2,
          //                             color: ColorsApp.MAINCOLOR,
          //                             fontWeight: FontWeight.bold,
          //                             fontSize: 50),
          //                       ],
          //                     ),
          //                     const SizedBox(height: 20),
          //                     CustomText(
          //                       text: paraghaph2,
          //                       fontSize: 40,
          //                       fontWeight: FontWeight.w500,
          //                       color: ColorsApp.TextColorFeatures,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
