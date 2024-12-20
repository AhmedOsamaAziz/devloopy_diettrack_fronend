import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/widgets/custom_text.dart';

class MobileCustomCardFAQPrincing extends StatelessWidget {
  const MobileCustomCardFAQPrincing({super.key});

  @override
  Widget build(BuildContext context) {
    return

        // const Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     QuestionCardList(),
        //     AskYourQuestion(),
        //   ],
        // );

        Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 1280,
      height: 1350,
      child: Row(
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 20, top: 15, bottom: 15),
                color: ColorsApp.OUTLINECOLOR,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    'What is personalized nutrition coaching?'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    "Personalized nutrition coaching involves creating a customized nutrition plan based on your unique goals, preferences, and dietary requirements. Our team of experts will work closely with you to develop a plan that fits your lifestyle and helps you achieve optimal health and wellness."),
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    'How can nutrition coaching help me lose weight?'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    'Can I still enjoy my favorite foods while on a nutrition plan??'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    'How often will I have contact with my nutritionist?'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text: 'How long will it take to see results?'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomText(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                text:
                                    'Are the meal plans and recipes provided suitable for vegetarians or vegans??'),
                          ),
                          SizedBox(
                              height: 30,
                              width: 30,
                              child:
                                  SvgPicture.asset('assets/images/Icon.svg')),
                        ]),
                    Container(
                      width: 350,
                      height: 200,
                      color: ColorsApp.OUTLINECOLOR,
                      child: Column(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: AspectRatio(
                                    aspectRatio: 1 / 2,
                                    child: SvgPicture.asset(
                                      'assets/images/Logo.svg',
                                    ))),
                          ),
                          const SizedBox(height: 10),
                          CustomText(
                            text: 'Ask your question',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorsApp.MAINCOLOR,
                          ),
                          CustomText(
                            text: 'Feel Free to Ask questions on anytime',
                            fontSize: 14,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: 160,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: ColorsApp.SecondaryColor,
                            ),
                            child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      3.0), // Adjust as needed
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Ask A Question',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
