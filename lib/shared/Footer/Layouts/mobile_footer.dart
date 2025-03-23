import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/cubits/navigation_cubit.dart';
import 'package:ui/shared/Footer/widget/build_contact_info.dart';
import 'package:ui/shared/Footer/widget/build_nav_button_footer.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key, required this.activeIndex});

  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: ColorsApp.MAINCOLOR,
      child: Column(
        children: [
          // Logo and Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesIconFlower,
                color: ColorsApp.SecondaryColor,
                height: 60,
                width: 60,
              ),
              const SizedBox(width: 10),
              const Text(
                "DietTrack",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 15),

          // Navigation Buttons
          _buildMobileNavigation(
            activeIndex,
            (index) => context.read<NavigationCubit>().changeTab(index),
          ),

          const SizedBox(height: 20),

          // Contact Information
          const BuildContactInfo(),
        ],
      ),
    );
  }

  Widget _buildMobileNavigation(
      int currentIndex, Function(int index) onTabSelected) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8, //
      runSpacing: 8, //
      children: [
        NavButton(
          label: 'Home',
          index: 0,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(0),
        ),
        NavButton(
          label: 'About',
          index: 1,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(1),
        ),
        NavButton(
          label: 'Team',
          index: 2,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(2),
        ),
        NavButton(
          label: 'Blog',
          index: 3,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(3),
        ),
        NavButton(
          label: 'Process',
          index: 4,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(4),
        ),
        NavButton(
          label: 'Pricing',
          index: 5,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(5),
        ),
        NavButton(
          label: 'Contact Us',
          index: 6,
          currentIndex: currentIndex,
          onPressed: () => onTabSelected(6),
        ),
      ],
    );
  }
}
