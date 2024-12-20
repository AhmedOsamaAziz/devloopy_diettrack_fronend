import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/service_section/widget/description_service.dart';
import 'package:ui/screens/home/sections/service_section/widget/discount_button.dart';
import 'package:ui/screens/home/sections/service_section/widget/list_price_card.dart';
import 'package:ui/screens/home/sections/service_section/widget/title_service.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: ScreenSize.isLarge
      //     ? 1596
      //     : ScreenSize.isMedium
      //         ? 1280
      //         : 358,
      // height: ScreenSize.isLarge
      //     ? 1011
      //     : ScreenSize.isMedium
      //         ? 550
      //         : 1250,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenSize.isLarge ? 150 : 0,
      ),
      child: const Column(
        children: [
          Column(
            children: [
              TitleService(),
              DescriptionService(),
              SizedBox(height: 30),
              DiscountButton(),
            ],
          ),
          ListPriceCard(),
        ],
      ),
    );
  }
}
