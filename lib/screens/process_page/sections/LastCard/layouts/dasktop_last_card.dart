import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/LastCard/widget/custom_button_last_card.dart';
import 'package:ui/screens/process_page/sections/LastCard/widget/process_last_card_title.dart';
import 'package:ui/screens/process_page/sections/LastCard/widget/procss_last_card_description.dart';

class DeskTopLastCardProcess extends StatelessWidget {
  const DeskTopLastCardProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1596,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: Stack(
        children: [
          Card(
            elevation: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF6FBE9),
              ),
              height: 279,
              width: 1596,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      height: 119,
                      width: 1132,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProcessLastCardTitle(),
                            SizedBox(height: 10),
                            ProcssLastCardDescription(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CustomButtonLastCard(),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/images/AbstractDesign.png', height: 100),
          Positioned(
              bottom: 0,
              right: 0,
              child:
                  Image.asset('assets/images/AbstractDesign2.png', height: 100))
        ],
      ),
    );
  }
}
