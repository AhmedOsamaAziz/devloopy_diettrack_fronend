import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/dashboard_screen/main_dashboard.dart';
import 'package:ui/screens/home/home_page.dart';

class NewUnderAppbar extends StatefulWidget {
  const NewUnderAppbar(
      {super.key, required this.activeIndex, required this.onTabChanged});
  final int activeIndex;
  final ValueChanged<int> onTabChanged;

  @override
  State<NewUnderAppbar> createState() => _NewUnderAppbarState();
}

class _NewUnderAppbarState extends State<NewUnderAppbar> {
  Widget _buildNavButton(
    int index,
    String label,
  ) {
    bool isActive = widget.activeIndex == index;
    return TextButton(
      style: TextButton.styleFrom(
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        widget.onTabChanged(index);
      },
      child: Text(
        label,
        style: TextStyle(
          color: isActive ? ColorsApp.SecondaryColor : Colors.white,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isLoggedIn = state is LoginSuccess;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
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
                SizedBox(width: MediaQuery.of(context).size.width * 1/7.5),
              _buildNavButton(0, 'Home'),
              _buildNavButton(1, 'About'),
              _buildNavButton(2, 'Team'),
              _buildNavButton(3, 'Blog'),
              _buildNavButton(5, 'process'),
              _buildNavButton(6, 'Pricing'),
              _buildNavButton(7, 'Contact Us'),
              _buildAuthDropdown(context, isLoggedIn),
            ],
          ),
        );
      },
    );
  }
}

Widget _buildAuthDropdown(BuildContext context, bool isLoggedIn) {
  return DropdownButton<String>(

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
