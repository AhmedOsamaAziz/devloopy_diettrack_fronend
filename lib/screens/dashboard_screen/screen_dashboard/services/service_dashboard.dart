// service_dashboard.dart
import 'package:flutter/material.dart';

import 'dashboard_body.dart';

class ServiceDashBoard extends StatefulWidget {
  const ServiceDashBoard({super.key});

  @override
  _ServiceDashBoardState createState() => _ServiceDashBoardState();
}

class _ServiceDashBoardState extends State<ServiceDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const DashBoardBody();
  }
}
