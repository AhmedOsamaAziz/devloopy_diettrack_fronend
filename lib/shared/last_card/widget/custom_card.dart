import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/shared/last_card/widget/custom_card_desktop.dart';
import 'package:ui/shared/last_card/widget/custom_card_mobile.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.lastCardModel});

  final LastCardModel lastCardModel;

  @override
  Widget build(BuildContext context) {
    final double padding = ScreenSize.isLarge ? 80 : 20;
    final double imageSize =
        (ScreenSize.isLarge || ScreenSize.isMedium) ? 100 : 50;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Stack(
        children: [
          Card(
            elevation: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF6FBE9),
              ),
              height: 320,
              width: ScreenSize.isLarge
                  ? 1596
                  : ScreenSize.isMedium
                      ? 1280
                      : 358,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ScreenSize.isSmall
                    ? CustomCardMobile(lastCardModel: lastCardModel)
                    : CustomCardDesktop(lastCardModel: lastCardModel),
              ),
            ),
          ),
          // Decorative Images
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              Assets.imagesAbstractDesign,
              height: imageSize,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              Assets.imagesAbstractDesign2,
              height: imageSize,
            ),
          ),
        ],
      ),
    );
  }
}
