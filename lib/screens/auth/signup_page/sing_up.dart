import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/auth/signup_page/widget/sing_up_form_.dart';
import 'package:ui/widgets/custom_text.dart';
import 'widget/icon_social_media.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFDF2),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(height: 82, color: ColorsApp.MAINCOLOR),
              CustomText(
                text: 'Sign Up',
                fontFamily: FontsApp.fontFamilyUrbanist,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorsApp.AppBarColor,
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: 500,
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        SizedBox(height: 30),
                        SignUpForm(),
                        SizedBox(height: 30),
                        IconSocialMedia(),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
              Container(height: 82, color: ColorsApp.MAINCOLOR),
            ],
          );
        },
      ),
    );
  }
}
