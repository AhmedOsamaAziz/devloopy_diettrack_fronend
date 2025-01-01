import 'package:flutter/material.dart';
import 'package:ui/model/general/drawer_admin_model.dart';

import 'active_and_inactive_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.drawerAdminModel,
    required this.isActive,
  });

  final DrawerAdminModel drawerAdminModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerAdminModel: drawerAdminModel,
          )
        : InActiveDrawerItem(
            drawerAdminModel: drawerAdminModel,
          );
  }
}
