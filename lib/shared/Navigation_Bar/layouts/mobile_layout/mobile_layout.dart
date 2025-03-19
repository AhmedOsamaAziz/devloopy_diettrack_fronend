import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/Navigation_Bar/layouts/mobile_layout/widget/under_appbar_mobile.dart';
import 'package:ui/shared/Navigation_Bar/layouts/mobile_layout/widget/uppar_appbar_mobile.dart';

class MobileNavigationBar extends StatelessWidget {
  const MobileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return Container(
      height: 168,
      width: 420,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UpparAppBarMobile(),
          UnderUppBarMobile(),
        ],
      ),
    );
  }
}
