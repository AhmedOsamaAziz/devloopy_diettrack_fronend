import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/widgets/Navigation_Bar/layouts/desktop_layouts/widget/under_appbar.dart';
import 'package:ui/widgets/Navigation_Bar/layouts/desktop_layouts/widget/upper_appbar.dart';

class DesktopNavigationBar extends StatefulWidget {
  const DesktopNavigationBar({super.key});

  @override
  State<DesktopNavigationBar> createState() => _DesktopNavigationBarState();
}

class _DesktopNavigationBarState extends State<DesktopNavigationBar> {
  final List _listDrawer = DrawerModel.drawer;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const UpparAppBar(),
                      const SizedBox(height: 10),
                      Expanded(
                        child: GestureDetector(
                            child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: _listDrawer.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          activeIndex = index;
                                        });
                                        log("Active index: $activeIndex");
                                      },
                                      child: UnderUppBar(
                                         activeIndex:
                                            activeIndex, // Pass activeIndex
                                        onTabChanged: (index) {
                                          setState(() {
                                            activeIndex =
                                                index; // Update activeIndex
                                          });
                                        },
                                      ),
                                    );
                                  },
                                ))),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}


 