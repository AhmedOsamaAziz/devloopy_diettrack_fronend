import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/model/general/drawer_admin_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerAdminModel,
  });

  final DrawerAdminModel drawerAdminModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerAdminModel.icon),
      title: Text(drawerAdminModel.title,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          )),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerAdminModel,
  });

  final DrawerAdminModel drawerAdminModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerAdminModel.icon),
      title: Text(drawerAdminModel.title,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: ColorsApp.MAINCOLOR,
          )),
      trailing: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 3.27,
        decoration: const BoxDecoration(
          color: ColorsApp.MAINCOLOR,
        ),
      ),
    );
  }
}
