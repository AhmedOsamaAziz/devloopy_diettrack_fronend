import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class PricingFeature extends StatelessWidget {
  const PricingFeature({
    super.key,
    required this.title,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.title6,
    this.title7,
    this.title8,
    this.title9,
    this.title10,
    this.title11,
  });

  final String title;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? title6;
  final String? title7;
  final String? title8;
  final String? title9;
  final String? title10;
  final String? title11;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 2 / 5;
    double height = MediaQuery.of(context).size.height * 0.09;
    return SizedBox(
      // width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ColorsApp.MAINCOLOR,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: CustomText(
                text: title,
                color: Colors.white,
                fontSize: getResponsiveFontSize(context, fontSize: 14),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title2 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title3 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title4 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title5 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title5 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title6 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title7 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title8 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title9 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.lightGreen,
                ),
              ),
            ),
            child: CustomText(
              text: title10 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: Colors.lightGreen,
              )),
            ),
            child: CustomText(
              text: title11 ?? '',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
