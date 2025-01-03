import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class CustomFromField extends StatefulWidget {
  const CustomFromField({
    super.key,
    required this.icon,
    this.suffixIcon,
    required this.hintText,
    this.controller,
    this.obscureText = false,
  });

  final IconData icon;
  final IconData? suffixIcon;
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  State<CustomFromField> createState() => _CustomFromFieldState();
}

class _CustomFromFieldState extends State<CustomFromField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: (widget.obscureText && _obscureText),
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(widget.icon, color: ColorsApp.AppBarColor),
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: Icon(
                  _obscureText
                      ? widget.suffixIcon
                      : Icons.visibility_off_outlined,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        hintStyle:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 12)),
        fillColor: ColorsApp.OUTLINECOLOR,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "  Please enter Passwords must have at least one non alphanumeric character and least one lowercase ('a'-'z'";
        }
        return null;
      },
    );
  }
}
