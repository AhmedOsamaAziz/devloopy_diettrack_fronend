import 'package:flutter/material.dart';

import '../../../../../Constants/constants.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppLogo() ,

        AppMenu(),

        DropMenus(),
    ]);
  }
}


class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Logo");
  }
}


class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Home' , style: TextStyle(fontWeight: FontWeight.bold , color: ColorsApp.SecondaryColor),),
        Text('About'),
        Text('Team'),
        Text('Process'),
        Text('Price'),
        Text('Contact us'),
    ]);
  }
}


class DropMenus extends StatelessWidget {
  const DropMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(child: Text('Login')),
        const PopupMenuItem(child: Text('Logout')),
        const PopupMenuItem(child: Text('Dashboard')),

      ],
    );
  }
}
