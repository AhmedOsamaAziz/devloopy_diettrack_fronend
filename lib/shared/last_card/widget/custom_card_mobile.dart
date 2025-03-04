import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/shared/custom_text.dart';

class CustomCardMobile extends StatelessWidget {
  const CustomCardMobile({super.key, required this.lastCardModel});

  final LastCardModel lastCardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 800,
      height: 400,
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: CustomText(
              text: lastCardModel.text,
              fontWeight: FontWeight.bold,
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              color: ColorsApp.MAINCOLOR,
            ),
          ),
          Expanded(
            flex: 2,
            child: CustomText(
              text: lastCardModel.subTitle,
              fontSize: getResponsiveFontSize(context, fontSize: 13),
              color: ColorsApp.TextColorFeatures,
            ),
          ),
          SizedBox(
            height: lastCardModel.heightBtn,
            width: double.infinity, // Button takes full width
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
                  fontSize: getResponsiveFontSize(context, fontSize: 16),
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
