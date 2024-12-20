import 'package:flutter/material.dart';

import '../../../../helper/screen_size.dart';
import 'layout/desktop_button_support.dart';
import 'layout/mobile_button_support.dart';
import 'layout/tablet_button_support.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopButtonSupporting()
        : ScreenSize.isMedium
            ? const TabletButtonSupporting()
            : const MobileButtonSupporting();
  }
}
