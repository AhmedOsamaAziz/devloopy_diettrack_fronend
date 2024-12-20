import 'package:flutter/material.dart';
import 'package:ui/screens/admin/dashboard/dashboard_page.dart';
 import 'package:ui/screens/admin/constants/responsive.dart';
import 'package:ui/screens/admin/sidemenu/sidebar.dart';
import 'package:ui/screens/admin/sidemenu/tab_sidebar.dart';
import 'package:ui/screens/admin/tabs/header.dart';

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Responsive.isMobile(context) ? const Sidebar() : null,
      body: Row(
        children: [
          if (Responsive.isDesktop(context)) const Sidebar(),
          if (Responsive.isTablet(context)) const TabSidebar(),
          Expanded(
            child: Column(
              children: [
                Header(drawerKey: _drawerKey),
                const DashboardPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
