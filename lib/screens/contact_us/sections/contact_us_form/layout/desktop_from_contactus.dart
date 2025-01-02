import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/core/url_launcher.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/widget/custom_button_contact_us.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/widget/custom_form_feild.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/widget/social_media_buttons_desktop.dart';
import 'package:ui/widgets/custom_text.dart';

class DesktopFormContactUs extends StatelessWidget {
  const DesktopFormContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        color: ColorsApp.OUTLINECOLOR,
        height: 500,
        width: 1596,
        child: Row(
          children: [
            const FormSection(),
            const SizedBox(width: 30),
            Container(
              margin: const EdgeInsets.only(right: 50),
              height: MediaQuery.of(context).size.height * 0.60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 6,
                    child: GestureDetector(
                      onTap: () => handleButtonClick(
                          context: context, url: 'https://www.google.com/maps'),
                      child: Image.asset("assets/images/Map.png",
                          fit: BoxFit.cover, height: 320),
                    ),
                  ),
                  const SocialMediaButtonsDesktop(),
                ],
              ),
            ),
          ],
        ));
  }
}

class FormSection extends StatelessWidget {
  const FormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(left: 50),
        height: 450,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFromField(text: 'Full Name', hintText: 'Enter your Name'),
                SizedBox(width: 10),
                CustomFromField(text: 'Email', hintText: 'Enter your Email'),
              ],
            ),
            const SizedBox(height: 20),
            const CustomFromField(
                text: 'Phone Number', hintText: 'Enter your Number'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
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
          ],
        ),
      ),
    );
  }
}
