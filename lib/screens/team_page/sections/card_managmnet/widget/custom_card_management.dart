import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_managment_team.dart';
import 'package:ui/shared/custom_text.dart';
 
class CustomCardManagment extends StatelessWidget {
  const CustomCardManagment({super.key, required this.cardManagmentTeam});

  final CardManagmentTeam cardManagmentTeam;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SizedBox(
              height: ScreenSize.isLarge
                  ? 406
                  : ScreenSize.isMedium
                      ? 300
                      : 250,
              width: ScreenSize.isMedium || ScreenSize.isSmall ? 280 : 305,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  cardManagmentTeam.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: ScreenSize.isLarge
                  ? 10
                  : ScreenSize.isMedium
                      ? 50
                      : 0,
              left: 0,
              child: Container(
                width: ScreenSize.isLarge ? 270 : 180,
                height: ScreenSize.isLarge ? 100 : 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                decoration: const BoxDecoration(
                    color: Color(0xffF6FBE9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: cardManagmentTeam.name,
                      fontSize: getResponsiveFontSize(context, fontSize: 13),
                      fontWeight: FontWeight.bold,
                      color: ColorsApp.MAINCOLOR,
                    ),
                    CustomText(
                      text: cardManagmentTeam.jobTitle,
                      fontSize: getResponsiveFontSize(context, fontSize: 12),
                      color: ColorsApp.MAINCOLOR,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
