import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';

import 'Layouts/daesktop_footer.dart';

class MainFooter extends StatelessWidget {
  const MainFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? const DesktopFooter()
        : ScreenSize.isMedium
            ? Text('Tablet') //const TabletFooter()
            : Text('data'); // const MobileFooter();
  }
}
