import 'package:flutter/material.dart';

class CustomIconContactUs extends StatelessWidget {
  const CustomIconContactUs({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffCBEA7B),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon)),
    );
  }
}
