import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/general/contact_us_button.dart';

class TabletButtonSupporting extends StatelessWidget {
  const TabletButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return SizedBox(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ListView.builder(
              itemCount: contactBtn.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomButtonItem(
                    contactUsButton: contactBtn[index],
                  ),
                );
              }),
        ));
  }
}
