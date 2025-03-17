import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL() async {
  final Uri url = Uri.parse('https://flutter.dev');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int activeIndex;
  final ValueChanged<int> onTabChanged;

  const CustomAppBar({
    super.key,
    required this.activeIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ["Home", "About", "Team"];
    return AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(tabs.length, (index) {
          return GestureDetector(
            onTap: () => onTabChanged(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: activeIndex == index ? Colors.yellow : Colors.white,
                  fontWeight: activeIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  fontSize: 18,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
