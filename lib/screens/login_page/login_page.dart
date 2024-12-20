import 'package:flutter/material.dart';
import 'package:ui/screens/login_page/widget/custom_form_login.dart';
import '../../Constants/constants.dart';
import 'package:ui/widgets/custom_text.dart';
import '../signup_page/widget/icon_social_media.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 82, color: ColorsApp.MAINCOLOR),
            const SizedBox(height: 40),
            CustomText(
              text: 'Login',
              fontFamily: FontsApp.fontFamilyUrbanist,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: ColorsApp.AppBarColor,
            ),
            const SizedBox(height: 30),
            CustomFormLogin(),
            const SizedBox(height: 30),
            const IconSocialMedia(),
            const SizedBox(height: 30),
            Container(height: 82, color: ColorsApp.MAINCOLOR),
          ],
        ),
      ),
    );
  }
}
