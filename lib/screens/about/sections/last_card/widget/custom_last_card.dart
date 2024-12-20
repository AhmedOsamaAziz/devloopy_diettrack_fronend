import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomLastCard extends StatelessWidget {
  const CustomLastCard({super.key, required this.lastCardModel});

  final LastCardModel lastCardModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.isLarge ? 80 : 20,
          vertical: ScreenSize.isLarge ? 80 : 20),
      child: Stack(
        children: [
          Card(
            elevation: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF6FBE9),
              ),
              height: ScreenSize.isLarge ? 279 : 300,
              width: ScreenSize.isLarge
                  ? 1596
                  : ScreenSize.isMedium
                      ? 1280
                      : 358,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      height: ScreenSize.isLarge ? 119 : 300,
                      width: ScreenSize.isLarge ? 1132 : 358,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: ScreenSize.isLarge
                                ? 60
                                : ScreenSize.isMedium
                                    ? 30
                                    : 15,
                            top: ScreenSize.isSmall ? 0 : 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: lastCardModel.text,
                              fontWeight: FontWeight.w700,
                              fontFamily: FontsApp.fontFamilyUrbanist,
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 20),
                              color: ColorsApp.MAINCOLOR,
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: CustomText(
                                text: lastCardModel.subTitle,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 14),
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff333333),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenSize.isLarge
                            ? 40
                            : ScreenSize.isLarge
                                ? 40
                                : 10),
                    height: lastCardModel.heightBtn,
                    width: lastCardModel.widthBtn,
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Adjust as needed
                        ),
                        color: ColorsApp.SecondaryColor,
                        onPressed: () {},
                        child: Text(
                          lastCardModel.textbtn,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 14),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/AbstractDesign.png',
              height: ScreenSize.isLarge && ScreenSize.isMedium ? 100 : 70),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/AbstractDesign2.png',
                  height: ScreenSize.isLarge && ScreenSize.isMedium ? 100 : 70))
        ],
      ),
    );
  }
}
