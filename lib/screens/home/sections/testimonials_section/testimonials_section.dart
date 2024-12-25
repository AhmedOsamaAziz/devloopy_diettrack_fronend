import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'Layouts/desktop_layout.dart';
import 'Layouts/moblie_layout.dart';
import 'Layouts/tablet_layout.dart';

class TestmonilasSection extends StatelessWidget {
  const TestmonilasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.getScreenSize(context) == Screen.large
        ? const DesktopTestimonialsOurComment()
        : (ScreenSize.getScreenSize(context) == Screen.medium
            ? const TabletTestimonialsOurComment()
            : const MoblieTestimonialsOurComment());
  }
}
