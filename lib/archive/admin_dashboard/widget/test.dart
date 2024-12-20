import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  const Tables({super.key});

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(destinations: const [
          NavigationRailDestination(
              icon: Icon(Icons.home), label: Text('Home')),
          NavigationRailDestination(
              icon: Icon(Icons.car_crash), label: Text('gogool')),
          NavigationRailDestination(
              icon: Icon(Icons.home), label: Text('Home')),
          NavigationRailDestination(
              icon: Icon(Icons.home), label: Text('Home')),
        ], selectedIndex: 0)
      ],
    );
  }
}
