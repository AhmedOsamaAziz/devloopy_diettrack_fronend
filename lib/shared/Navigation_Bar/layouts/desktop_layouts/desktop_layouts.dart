import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/shared/Navigation_Bar/layouts/desktop_layouts/widget/under_appbar.dart';
import 'package:ui/shared/Navigation_Bar/layouts/desktop_layouts/widget/upper_appbar.dart';

import 'widget/new_under_appbar.dart';

class DesktopNavigationBar extends StatefulWidget {
  const DesktopNavigationBar({super.key});

  @override
  State<DesktopNavigationBar> createState() => _DesktopNavigationBarState();
}

class _DesktopNavigationBarState extends State<DesktopNavigationBar> {
  int activeIndex = 0; // Tracks the active navigation index

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return Center(
        child: Container(
            alignment: Alignment.center,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const UpparAppBar(),
                      const SizedBox(height: 10),
                      NewUnderAppbar(

                        onTabChanged: (index) {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        activeIndex: activeIndex,
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
