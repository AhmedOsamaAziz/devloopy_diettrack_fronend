import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/cubits/navigation_cubit.dart';
import 'package:ui/shared/Footer/widget/build_contact_info.dart';
import 'package:ui/shared/Footer/widget/build_nav_button_footer.dart';

class TabletFooter extends StatelessWidget {
  const TabletFooter({super.key, required this.activeIndex});
  final int activeIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      color: ColorsApp.MAINCOLOR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesIconFlower,
                  color: ColorsApp.SecondaryColor, height: 35, width: 35),
              const SizedBox(width: 10),
              const Text("DietTrack", style: TextStyle(color: Colors.white)),
              const Spacer(),
              _buildTabletNavigation(activeIndex,
                  (index) => context.read<NavigationCubit>().changeTab(index)),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          const BuildContactInfo(),
        ],
      ),
    );
  }

  Widget _buildTabletNavigation(
      int currentIndex, Function(int index) onTabSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
