import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/helper/font_size_responsive.dart';

import '../../../../../screens/auth/login_page/login_page.dart';
import '../../../../../screens/dashboard_screen/main_dashboard.dart';

class OurNavBar extends StatefulWidget {
  const OurNavBar({
    super.key,
    required this.activeIndex,
    required this.onTabChanged,
  });

  final int activeIndex;
  final ValueChanged<int> onTabChanged;

  @override
  _OurNavBarState createState() => _OurNavBarState();
}

class _OurNavBarState extends State<OurNavBar> {
  int localIndex = 0; // local state if needed

  @override
  void initState() {
    super.initState();
    localIndex = widget.activeIndex;
  }

  @override
  void didUpdateWidget(covariant OurNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.activeIndex != widget.activeIndex) {
      setState(() {
        localIndex = widget.activeIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isLoggedIn = state is LoginSuccess;
        return Container(
          color: ColorsApp.MAINCOLOR,
          padding: const EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width * 0.9,
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Assets.imagesLogo),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          _buildDesktopNavigation(localIndex, (index) {
                            // Update local state and call parent's callback
                            setState(() {
                              localIndex = index;
                            });
                            widget.onTabChanged(index);
                          }),
                          const Spacer(),
                          _buildAuthDropdown(context, isLoggedIn),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildAuthDropdown(BuildContext context, bool isLoggedIn) {
    return DropdownButton<String>(
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(10),
      enableFeedback: true,
      dropdownColor: ColorsApp.OUTLINECOLOR,
      icon: const Icon(Icons.menu, color: ColorsApp.SecondaryColor),
      underline: const SizedBox(),
      items: [
        if (!isLoggedIn) ...[
          const DropdownMenuItem(
            value: 'login',
            child: Text(
              'Login',
              style: TextStyle(color: ColorsApp.NumberColor),
            ),
          ),
          const DropdownMenuItem(
            value: 'logout',
            child: Text(
              'Logout',
              style: TextStyle(color: ColorsApp.NumberColor),
            ),
          ),
        ],
        const DropdownMenuItem(
          value: 'dashboard',
          child: Text(
            'Dashboard',
            style: TextStyle(color: ColorsApp.NumberColor),
          ),
        ),
      ],
      onChanged: (value) {
        switch (value) {
          case 'login':
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
            break;
          case 'logout':
            context.read<LoginCubit>().logout(context);
            break;
          case 'dashboard':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainDashboard()),
            );
            break;
        }
      },
    );
  }

  Widget _buildDesktopNavigation(
      int currentIndex, Function(int index) onTabSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _NavButton(
            label: 'Home',
            index: 0,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(0),
          ),
          _NavButton(
            label: 'About',
            index: 1,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(1),
          ),
          _NavButton(
            label: 'Team',
            index: 2,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(2),
          ),
          _NavButton(
            label: 'Blog',
            index: 3,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(3),
          ),
          _NavButton(
            label: 'Process',
            index: 4,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(4),
          ),
          _NavButton(
            label: 'Pricing',
            index: 5,
            currentIndex: currentIndex,
            onPressed: () => onTabSelected(5),
          ),
          _NavButton(
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

class _NavButton extends StatelessWidget {
  final String label;
  final int index;
  final int currentIndex;
  final VoidCallback onPressed;

  const _NavButton({
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = index == currentIndex;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
        backgroundColor: isActive ? ColorsApp.MAINCOLOR : Colors.transparent,
        foregroundColor: isActive ? ColorsApp.SecondaryColor : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.white : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 10),
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
