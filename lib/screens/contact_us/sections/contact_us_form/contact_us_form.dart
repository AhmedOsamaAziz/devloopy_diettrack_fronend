import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/layout/mobile_from_contactus.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/layout/tablet_from_contactus.dart';
import 'layout/desktop_from_contactus.dart';

class FormContactUsSection extends StatelessWidget {
  const FormContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopFormContactUs()
        : ScreenSize.isMedium
            ? const TabletFormContactUs()
            : const MobileFormContactUs();
  }
}
