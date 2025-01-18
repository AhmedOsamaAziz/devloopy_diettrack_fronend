import 'package:flutter/material.dart';
import 'package:ui/screens/dashboard_screen/screen_dashboard/blog_list_dashboard.dart';
 
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          BlogListDashBoard(),
        ],
      ),
    );
  }
}
