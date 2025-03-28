import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';

import '../../screens/auth/login_page/login_page.dart';
import '../../screens/dashboard_screen/main_dashboard.dart';
import '../Footer/widget/build_nav_button_footer.dart' show NavButton;

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
                          _buildAuthPopupMenu(context, isLoggedIn),
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

  Widget _buildAuthPopupMenu(BuildContext context, bool isLoggedIn) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.menu, color: ColorsApp.SecondaryColor),
      color: ColorsApp.OUTLINECOLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onSelected: (value) {
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
      itemBuilder: (context) => [
        if (!isLoggedIn)
          const PopupMenuItem<String>(
            value: 'login',
            child: Text(
              'Login',
              style: TextStyle(color: ColorsApp.NumberColor),
            ),
          )
        else ...[
          const PopupMenuItem<String>(
            value: 'dashboard',
            child: Text(
              'Dashboard',
              style: TextStyle(color: ColorsApp.NumberColor),
            ),
          ),
          const PopupMenuItem<String>(
            value: 'logout',
            child: Text(
              'Logout',
              style: TextStyle(color: ColorsApp.NumberColor),
            ),
          ),
        ],
      ],
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
