import 'package:ui/helper/screen_size.dart';
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
        width: MediaQuery.of(context).size.width - 100,
        child: Center(
          child: ListView.builder(
              itemCount: contactBtn.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenSize.isMedium ? 20.0 : 10),
                  child: CustomButtonItem(
                    contactUsButton: contactBtn[index],
                  ),
                );
              }),
        ));
  }
}
