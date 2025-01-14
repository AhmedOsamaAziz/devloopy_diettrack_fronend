 
import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class PricingFeature extends StatelessWidget {
  const PricingFeature({
    super.key,
    required this.title,
    required this.titles,
  });

  final String title;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.4;
    double height = MediaQuery.of(context).size.height * 0.1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     
        Container(
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
 
        ...titles.map(
          (subtitle) => Container(
            padding: const EdgeInsets.all(15),
            width: width,
            height: height,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.lightGreen),
              ),
            ),
            child: CustomText(
              text: subtitle,
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 14),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
