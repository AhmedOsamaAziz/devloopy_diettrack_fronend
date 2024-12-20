import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomFreePlanIcon extends StatelessWidget {
  const CustomFreePlanIcon({
    super.key,
    required this.title,
    this.image,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.image6,
    this.image7,
    this.image8,
    this.image9,
    this.image10,
    this.image11,
  });
  final String title;
  final String? image;
  final String? image2;
  final String? image3;
  final String? image4;
  final String? image5;
  final String? image6;
  final String? image7;
  final String? image8;
  final String? image9;
  final String? image10;
  final String? image11;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .7 / 5;
    double height = MediaQuery.of(context).size.height * 0.09;

    return SizedBox(
      // width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Container(
              height: height,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorsApp.MAINCOLOR),
              child: Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: title,
                  color: Colors.white,
                  fontSize: getResponsiveFontSize(context, fontSize: 14),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: SizedBox(
              width: 10,
              child: Image.asset(
                image ?? '',
              ),
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image2 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image3 ?? ''),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            height: height,
            width: width,
            child: Image.asset(image4 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image5 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image6 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image7 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image8 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image9 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image10 ?? ''),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: const Border(
                bottom: BorderSide(color: Colors.lightGreen),
                left: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: Image.asset(image11 ?? ''),
          ),
        ],
      ),
    );
  }
}
