import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/url_launcher.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/contact_us_button.dart';
import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';

class DesktopButtonSupporting extends StatelessWidget {
  const DesktopButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.MAINCOLOR,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: ScreenSize.isLarge ? 140 : 100,
      width: MediaQuery.of(context).size.width - 100,
      child: Center(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: contactBtn.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenSize.isLarge ? 30.0 : 10,
                  vertical: ScreenSize.isLarge ? 20 : 10),
              child: CustomButtonItem(
                contactUsButton: contactBtn[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
