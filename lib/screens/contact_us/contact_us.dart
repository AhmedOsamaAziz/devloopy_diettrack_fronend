import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/last_card/last_card_section.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/contact_us_form.dart';
import 'package:ui/widgets/Footer/main_footer.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';
import 'sections/contact_us_buttons/contact_us_button.dart';
import 'sections/contact_us_header/contact_us_header.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);
    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainNavigationBar(),
            SizedBox(height: 60),
            HeaderContactUsSection(),
            SizedBox(height: 30),
            ContactUsButton(),
            SizedBox(height: 50),
            FormContactUsSection(),
            SizedBox(height: 50),
            LastCardSections(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
