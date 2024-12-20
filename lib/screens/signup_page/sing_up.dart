import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/widgets/custom_text.dart';
import 'widget/icon_social_media.dart';
import 'widget/sing_up_form_.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(height: 82, color: ColorsApp.MAINCOLOR),
              const SizedBox(height: 40),
              CustomText(
                text: 'Sing Up',
                fontFamily: FontsApp.fontFamilyUrbanist,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorsApp.AppBarColor,
              ),
              const SizedBox(height: 30),
              SingUpForm(),
              const SizedBox(height: 30),
              const IconSocialMedia(),
              const SizedBox(height: 30),
              Container(height: 82, color: ColorsApp.MAINCOLOR),
            ],
          ),
        ),
      ),
    );
  }
}
