import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/process_page/sections/LastCard/widget/custom_button_last_card.dart';
import 'package:ui/widgets/custom_text.dart';

class MobileLastCardProcess extends StatelessWidget {
  const MobileLastCardProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        children: [
          Card(
            elevation: 1,
            child: Container(
              // padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF6FBE9),
              ),
              height: 300,
              width: 358,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 358,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text:
                                'Are you ready to embark on a transformative journey towards better health and wellness?',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: ColorsApp.MAINCOLOR,
                          ),
                          const SizedBox(height: 10),
                          CustomText(
                            text:
                                " Join us at Nutritionist and let us guide you on the path to a healthier and happier you.",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff333333),
                          ),
                          const SizedBox(height: 20),

                          const CustomButtonLastCard()
                          // Container(
                          //   padding: const EdgeInsets.symmetric(horizontal: 10),
                          //   height: 50,
                          //   width: double.infinity,
                          //   child: MaterialButton(
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(
                          //             8.0), // Adjust as needed
                          //       ),
                          //       color: ColorsApp.SecondaryColor,
                          //       onPressed: () {},
                          //       child: const Text(
                          //         "Join Us Now",
                          //         style: TextStyle(
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w500,
                          //           fontSize: 14,
                          //         ),
                          //       )),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/AbstractDesign.png', height: 70),
          Positioned(
              bottom: 0,
              right: 0,
              child:
                  Image.asset('assets/images/AbstractDesign2.png', height: 70))
        ],
      ),
    );
  }
}
