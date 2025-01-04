import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/screens/admin/dashboard/entry_point.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/widgets/custom_text.dart';

class TabletNavigationBar extends StatefulWidget {
  const TabletNavigationBar({super.key});

  @override
  _TabletNavigationBarState createState() => _TabletNavigationBarState();
}

class _TabletNavigationBarState extends State<TabletNavigationBar> {
  final List _listDrawer = DrawerModel.drawer;

  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            const Expanded(child: UpparAppBar()),
            const SizedBox(height: 10),
            UnderUppBar(
              drawerModel: _listDrawer[_activeIndex], // Pass data
              activeIndex: _activeIndex, // Pass activeIndex
              onTabChanged: (index) {
                setState(() {
                  _activeIndex = index; // Update activeIndex
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UpparAppBar extends StatelessWidget {
  const UpparAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorsApp.AppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 30,
            width: 140,
            child: Image.asset(
              'assets/images/Abstracdesign.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 15,
                child: Image.asset(
                  'assets/images/icon.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              CustomText(
                text: 'Join Our Personalized Nutrition Demo For Free',
                fontWeight: FontWeight.normal,
                fontFamily: FontsApp.fontFamilyUrbanist,
                fontSize: 11,
                color: Colors.white,
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 10,
                width: 13,
                child: Image.asset(
                  'assets/images/arrow.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
            width: 140,
            child: Image.asset(
              'assets/images/path.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class UnderUppBar extends StatefulWidget {
  const UnderUppBar(
      {super.key,
      required this.drawerModel,
      required this.onTabChanged,
      required this.activeIndex});
  final DrawerModel drawerModel;
  final int activeIndex;

  final ValueChanged<int> onTabChanged;
  @override
  _UnderUppBarState createState() => _UnderUppBarState();
}

class _UnderUppBarState extends State<UnderUppBar> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isLoggedIn = state is LoginSuccess;
        return Container(
          padding: const EdgeInsets.all(2),
          width: 1010,
          child: FittedBox(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                Row(
                  children: [
                    _buildNavButton(context, 'Home', 0, const HomePage()),
                    _buildNavButton(context, 'About', 1, const AboutPage()),
                    _buildNavButton(context, 'Team', 2, const TeamPage()),
                    _buildNavButton(context, 'Process', 3, const ProcessPage()),
                    _buildNavButton(context, 'Pricing', 4, const PricingPage()),
                    _buildNavButton(context, 'Blog', 5, const BlogPage()),
                    _buildNavButton(
                        context, 'Contact', 6, const ContactUsPage()),
                    const SizedBox(width: 10),
                    _buildAuthDropdown(context, isLoggedIn),
                  ],
                ),
              ],
            ),
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
          _activeIndex = index; // Update active index on click
        });
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10), // Add spacing
        child: CustomText(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: _activeIndex == index
              ? Colors.white // Text color for active button
              : ColorsApp.SecondaryColor, // Inactive button color
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
              MaterialPageRoute(builder: (context) => const EntryPoint()),
            );
            break;
        }
      },
    );
  }
}
