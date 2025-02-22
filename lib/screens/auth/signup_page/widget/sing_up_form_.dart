import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/cubits/sing_up_cubit/singup_cubit.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/auth/signup_page/widget/custom_form_feild.dart';
import 'package:ui/services/sing_up_service/sing_up_service_implmentation.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/shared/custom_text.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SingupCubit(SingUpServiceImp(ApiService())),
      child: BlocConsumer<SingupCubit, SingupState>(
        listener: (context, state) {
          if (state is SingupSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  backgroundColor: ColorsApp.MAINCOLOR,
                  content: Text('Sign-up success')),
            );

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          } else if (state is SingupFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final cubit = context.read<SingupCubit>();

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomFromField(
                  controller: cubit.emailController,
                  icon: Icons.email,
                  hintText: 'Email',
                ),
                const SizedBox(height: 20),
                CustomFromField(
                  obscureText: true,
                  controller: cubit.passwordController,
                  icon: Icons.lock,
                  hintText: 'Password',
                  suffixIcon: Icons.visibility,
                ),
                const SizedBox(height: 20),
                CustomFromField(
                  obscureText: true,
                  controller: cubit.repasswordController,
                  icon: Icons.lock,
                  hintText: 'Confirm Password',
                  suffixIcon: Icons.visibility,
                ),
                const SizedBox(height: 30),
                if (state is SingupLoading)
                  const CircularProgressIndicator()
                else
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: CustomButton(
                      colorbtn: ColorsApp.AppBarColor,
                      colortxt: Colors.white,
                      fontWeight: FontWeight.bold,
                      text: 'Sign Up',
                      onPressed: cubit.singUp,
                    ),
                  ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Already have an account?',
                      fontSize: 12,
                    ),
                    const SizedBox(width: 5),
                    CustomText(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                      },
                      text: 'Login',
                      fontSize: 12,
                      color: ColorsApp.AppBarColor,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
