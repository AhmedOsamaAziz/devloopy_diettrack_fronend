import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/dashboard_screen/main_dashboard.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/helper/font_size_responsive.dart';

class UnderUppBar extends StatefulWidget {
  const UnderUppBar({
    super.key,
    required this.drawerModel,
    required this.activeIndex,
    required this.onTabChanged,
  });

  final DrawerModel drawerModel;
  final int activeIndex;
  final ValueChanged<int> onTabChanged;

  @override
  _UnderUppBarState createState() => _UnderUppBarState();
}

class _UnderUppBarState extends State<UnderUppBar> {
  int _selectedIndex = 0; // Track the selected button index

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isLoggedIn = state is LoginSuccess;

        return Container(
          padding: const EdgeInsets.all(2),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      _navigateToPage(context, const HomePage(), 0);
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
                  const Spacer(),
                  Expanded(
                    child: SizedBox(
                      height: 27,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildNavButton(context, 'Home', 0, const HomePage()),
                          _buildNavButton(
                              context, 'About', 1, const AboutPage()),
                          _buildNavButton(context, 'Team', 2, const TeamPage()),
                          _buildNavButton(
                              context, 'Process', 3, const ProcessPage()),
                          _buildNavButton(
                              context, 'Pricing', 4, const PricingPage()),
                          _buildNavButton(context, 'Blog', 5, const BlogPage()),
                          _buildNavButton(
                              context, 'Contact', 6, const ContactUsPage()),
                          const SizedBox(
                              width: 10), // Add space between buttons
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

  Widget _buildNavButton(
      BuildContext context, String text, int index, Widget page) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update selected index
        });
        _navigateToPage(context, page, index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? ColorsApp.MAINCOLOR // Active button color
              : ColorsApp.MAINCOLOR, // Inactive button background
          borderRadius: BorderRadius.circular(5),
        ),
        child: CustomText(
          text: text,
          fontSize: getResponsiveFontSize(context, fontSize: 11),
          fontWeight: FontWeight.w500,
          color: _selectedIndex == index
              ? Colors.white // Text color for active button
              : ColorsApp.SecondaryColor, // Text color for inactive buttons
        ),
      ),
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
        // if (isLoggedIn) ...[
        const DropdownMenuItem(
          value: 'dashboard',
          child: Text(
            'Dashboard',
            style: TextStyle(color: ColorsApp.NumberColor),
          ),
        ),
      ],
      // ],
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

  void _navigateToPage(BuildContext context, Widget page, int index) {
    widget.onTabChanged(index);
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
