import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/Constants/constants.dart';

import 'package:ui/widgets/custom_text.dart';
import '../widget/custom_button_contact_us.dart';
import '../widget/custom_form_feild.dart';
import '../widget/custom_icon.dart';

class MobileFormContactUs extends StatelessWidget {
  const MobileFormContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: ColorsApp.OUTLINECOLOR,
        height: 1000,
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomFromField(
                text: 'Full Name', hintText: 'Enter your Number'),
            const SizedBox(width: 10),
            const CustomFromField(text: 'Email', hintText: 'Enter your Email'),
            const SizedBox(height: 20),
            const CustomFromField(
                text: 'Phone Number', hintText: 'Enter your Number'),
            CustomText(text: 'Message', fontSize: 14),
            const SizedBox(height: 5),
            TextField(
              cursorColor: Colors.black,
              maxLines: 5,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffEEF8D3),
                  hintText: 'Enter your Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  )),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                text: 'Max 250 Chars',
                fontWeight: FontWeight.w500,
                fontFamily: FontsApp.fontFamilyUrbanist,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 10),
            CustomButtonContactUs(onPressed: () {}, text: 'Send Message'),
            const SizedBox(height: 30),
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/images/Map.png",
                fit: BoxFit.cover,
                height: 500,
                // width: double.infinity,
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 100),
                  CustomIconContactUs(
                      onPressed: () {}, icon: FontAwesomeIcons.facebook),
                  const SizedBox(width: 10),
                  CustomIconContactUs(
                      onPressed: () {}, icon: FontAwesomeIcons.twitter),
                  const SizedBox(width: 10),
                  CustomIconContactUs(
                      onPressed: () {}, icon: FontAwesomeIcons.linkedin)
                ],
              ),
            )
          ],
        ));
  }
}
