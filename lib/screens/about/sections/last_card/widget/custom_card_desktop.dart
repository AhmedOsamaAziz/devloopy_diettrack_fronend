import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomCardDesktop extends StatelessWidget {
  const CustomCardDesktop({
    super.key,
    required this.lastCardModel,
  });

  final LastCardModel lastCardModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1559,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: lastCardModel.text,
                  fontWeight: FontWeight.bold,
                  fontSize: getResponsiveFontSize(context, fontSize: 18),
                  color: ColorsApp.MAINCOLOR,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: lastCardModel.subTitle,
                  fontSize: getResponsiveFontSize(context, fontSize: 14),
                  color: const Color(0xff333333),
                ),
              ],
            ),
          ),
          // Button in Row
          Expanded(
            flex: 1,
            child: SizedBox(
              height: lastCardModel.heightBtn,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsApp.SecondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  lastCardModel.textbtn,
                  style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 14),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
