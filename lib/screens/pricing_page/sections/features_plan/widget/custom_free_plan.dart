 
import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_text.dart';


class CustomFreePlanIcon extends StatelessWidget {
  const CustomFreePlanIcon({
    super.key,
    required this.title,
    this.images = const [],
  });

  final String title;
  final List<String?> images;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.3;
    double height = MediaQuery.of(context).size.height * 0.1;

    return Container(
      constraints: const BoxConstraints(maxWidth: 1590),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Container
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsApp.MAINCOLOR,
            ),
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
          // Images List
          ...images.map(
            (image) => image != null
                ? Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: const Border(
                        bottom: BorderSide(color: Colors.lightGreen),
                        left: BorderSide(color: Colors.lightGreen),
                      ),
                    ),
                    child: Image.asset(
                      image,
                      cacheHeight: ScreenSize.isLarge ? 35 : 30,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
