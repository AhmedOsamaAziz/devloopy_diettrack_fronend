import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomCardMobile extends StatelessWidget {
  const CustomCardMobile({
    super.key,
    required this.lastCardModel,
  });

  final LastCardModel lastCardModel;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text Content
          CustomText(
            text: lastCardModel.text,
            fontWeight: FontWeight.bold,
            fontSize:
                getResponsiveFontSize(context, fontSize: 20),
            color: ColorsApp.MAINCOLOR,
          ),
          const SizedBox(height: 10),
          CustomText(
            text: lastCardModel.subTitle,
            fontSize:
                getResponsiveFontSize(context, fontSize: 14),
            color: const Color(0xff333333),
          ),
          const SizedBox(height: 20),
          // Button in Column
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
                  fontSize: getResponsiveFontSize(context,
                      fontSize: 16),
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      );
  }
}
