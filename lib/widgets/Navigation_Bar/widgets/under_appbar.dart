import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/model/general/drawer_model.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/widgets/custom_text.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().isLoggedIn(); // Check login status on init
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final isLoggedIn = state is LoginSuccess;

        return Container(
          padding: const EdgeInsets.all(2),
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      widget.onTabChanged(0);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.imagesLogo)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: SizedBox(
                      height: 27,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      child: Row(
                        spacing: 20,
                        children: [
                          // Show Home button only if logged in
                          // if (!isLoggedIn) _buildNavButton(context, 'Home', 7),
                          // Show other screens only if logged in
                          if (isLoggedIn) ...[
                            _buildNavButton(context, 'Home', 1),
                            _buildNavButton(context, 'About', 1),
                            _buildNavButton(context, 'Team', 2),
                            _buildNavButton(context, 'Prosses', 3),
                            _buildNavButton(context, 'Blog', 4),
                            _buildNavButton(context, 'Contact', 5),
                          ],
                          // Show Login or Logout button dynamically
                          if (!isLoggedIn)
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              color: ColorsApp.SecondaryColor,
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          else
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              color: ColorsApp.SecondaryColor,
                              onPressed: () {
                                context.read<LoginCubit>().logout(context);
                              },
                              child: const Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
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

  Widget _buildNavButton(BuildContext context, String buttonText, int index) {
    return CustomText(
      onTap: () {
        final isLoggedIn = context.read<LoginCubit>().state is LoginSuccess;

        if (!isLoggedIn && buttonText != 'Home') {
          // Prevent navigation to non-Home pages if not logged in
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please log in to access this page'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        widget.onTabChanged(index);
        switch (buttonText) {
          case 'Home':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            }
            break;
          case 'About':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            }
            break;
          case 'Team':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TeamPage()),
              );
            }
            break;
          case 'Prosses':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ProcessPage()),
              );
            }
            break;
          case 'Blog':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BlogPage()),
              );
            }
            break;
          case 'Contact':
            if (isLoggedIn) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ContactUsPage()),
              );
            }
            break;
        }
      },
      text: buttonText,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: widget.activeIndex == index
          ? ColorsApp.MAINCOLOR
          : ColorsApp.SecondaryColor,
    );
  }
}
