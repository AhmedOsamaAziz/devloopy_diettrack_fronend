import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/widgets/Navigation_Bar/widgets/under_appbar.dart';
import 'package:ui/widgets/custom_text.dart';

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
                                        drawerModel:
                                            _listDrawer[index], // Pass data
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

class UpparAppBar extends StatelessWidget {
  const UpparAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: ColorsApp.AppBarColor),
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: Image.asset(
                      'assets/images/Abstracdesign.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 15,
                        child: Image.asset(
                          'assets/images/icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      CustomText(
                        text: 'Join Our Personalized Nutrition Demo For Free',
                        fontWeight: FontWeight.normal,
                        fontFamily: FontsApp.fontFamilyUrbanist,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        height: 10,
                        width: 13,
                        child: Image.asset(
                          'assets/images/arrow.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  //
                  //? Image Right in Abb Bar
                  SizedBox(
                    child: SizedBox(
                      height: 30,
                      width: 150,
                      child: Image.asset(
                        'assets/images/path.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
