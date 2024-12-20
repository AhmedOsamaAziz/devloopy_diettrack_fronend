import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class CustomFromFeild extends StatefulWidget {
  const CustomFromFeild({
    super.key,
    required this.icon,
    this.sufixIcon,
    required this.hintText,
    this.controller,
  });
  final IconData icon;
  final IconData? sufixIcon;
  final String hintText;
  final TextEditingController? controller;

  @override
  State<CustomFromFeild> createState() => _CustomFromFeildState();
}

class _CustomFromFeildState extends State<CustomFromFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(
          widget.icon,
          color: ColorsApp.AppBarColor,
        ),
        suffixIcon: Icon(widget.sufixIcon),
        hintText: widget.hintText,
        hintStyle:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 12)),
        fillColor: const Color(0x0fffffff),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      controller: widget.controller,
    );
  }
}
