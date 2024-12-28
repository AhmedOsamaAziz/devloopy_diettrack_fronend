import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'Layouts/desktop_layout.dart';
import 'Layouts/moblie_layout.dart';
import 'Layouts/tablet_layout.dart';

class TestmonilasSection extends StatelessWidget {
  const TestmonilasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopTestimonialsOurComment()
        : ScreenSize.isMedium
            ? const TabletTestimonialsOurComment()
            : const MoblieTestimonialsOurComment();
  }
}
