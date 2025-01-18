import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/admin/sidemenu/customer_info.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_list_dashboard.dart';
import 'package:ui/screens/dashboard_screen/sidemenu/sider_menu.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  Widget _currentPage = const BlogListDashBoard();

  void _changePage(Widget page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: ColorsApp.AppBarColor,
      //   title: CustomerInfo(
      //     name: "Name",
      //     designation: "Designation",
      //     imageSrc: "https://via.placeholder.com/150",
      //   ),
      // ),
      body: Row(
        children: [
          SiderMenu(onPageSelected: (page) => _changePage(page)),
          Expanded(child: _currentPage),
        ],
      ),
    );
  }
}
