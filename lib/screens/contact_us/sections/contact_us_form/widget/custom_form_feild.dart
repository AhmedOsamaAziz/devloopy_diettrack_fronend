// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui/shared/custom_text.dart';

class CustomFromField extends StatelessWidget {
  const CustomFromField({
    super.key,
    required this.text,
    required this.hintText,
    this.maxLength,
  });
  final String text;
  final String hintText;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: text, fontSize: 14),
            const SizedBox(height: 5),
            TextField(
              maxLength: maxLength,
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEEF8D3),
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
            ),
          ],
        ));
  }
}
