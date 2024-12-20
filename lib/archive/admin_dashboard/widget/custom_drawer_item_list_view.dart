import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ui/model/general/drawer_admin_model.dart';
 
import 'custom_drawer_item.dart';

class CustomDrawerItemListView extends StatefulWidget {
  const CustomDrawerItemListView({
    super.key,
  });

  @override
  State<CustomDrawerItemListView> createState() =>
      _CustomDrawerItemListViewState();
}

class _CustomDrawerItemListViewState extends State<CustomDrawerItemListView> {
  final List<DrawerAdminModel> items = const [
    DrawerAdminModel(title: 'Blog', icon: Icons.app_blocking),
    DrawerAdminModel(title: 'Service/Plan', icon: Icons.app_blocking),
    DrawerAdminModel(title: 'Customers', icon: Icons.app_blocking),
    DrawerAdminModel(title: 'Testmonials', icon: Icons.app_blocking),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;

                log(activeIndex.toString());
              });
            }
          },
          child: CustomDrawerItem(
            drawerAdminModel: items[index],
            isActive: activeIndex == index,
          ),
        );
      },
    );
  }
}
