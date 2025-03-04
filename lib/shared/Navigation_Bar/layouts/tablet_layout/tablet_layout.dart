import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/shared/Navigation_Bar/layouts/desktop_layouts/widget/new_under_appbar.dart';
import 'package:ui/shared/Navigation_Bar/layouts/tablet_layout/widgets/uppar_appbar_tablet.dart';

import 'widgets/under_appbar_tablet.dart';
 
class TabletNavigationBar extends StatefulWidget {
  const TabletNavigationBar({super.key});

  @override
  _TabletNavigationBarState createState() => _TabletNavigationBarState();
}

class _TabletNavigationBarState extends State<TabletNavigationBar> {
  final List _listDrawer = DrawerModel.drawer;

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return Container(
      height: 100,
      width: double.infinity,

      decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
      child: Column(
        children: [
          const Expanded(child: UpparAppBarTablet()),
          const SizedBox(height: 10),
          Expanded(
              child: NewUnderAppbar(
                onTabChanged: (index) {
                  setState(() {
                    _activeIndex = index;
                  });
                },
                activeIndex: _activeIndex,
              )),

        ],
      ),
    );
  }
}
