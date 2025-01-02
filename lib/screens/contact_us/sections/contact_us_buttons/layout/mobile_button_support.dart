import 'package:flutter/material.dart';
 import 'package:ui/model/general/contact_us_button.dart';
import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';

class MobileButtonSupporting extends StatelessWidget {
  const MobileButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return SizedBox(
      height: 600,
      width: 360,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: contactBtn.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButtonItem(
                contactUsButton: contactBtn[index],
              ),
            );
          }),
    );
  }
}
