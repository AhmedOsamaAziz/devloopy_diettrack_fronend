import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/auth/signup_page/sing_up.dart';
import 'package:ui/screens/home/home_page.dart';
import 'package:ui/cubits/login_cubit/login_cubit.dart';
import 'package:ui/cubits/login_cubit/login_state.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/widgets/custom_text.dart';

import 'custom_input_field.dart';

class CustomFormLogin extends StatelessWidget {
  CustomFormLogin({super.key});

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: ColorsApp.MAINCOLOR,
              content: Text('Login successful')));
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: loginFormKey,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 350,
              width: 450,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              CustomInputField(
                                  labelText: 'Email',
                                  hintText: 'Your email',
                                  controller:
                                      BlocProvider.of<LoginCubit>(context)
                                          .emailController),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              CustomInputField(
                                  labelText: 'Password',
                                  hintText: 'Your password',
                                  obscureText: true,
                                  suffixIcon: true,
                                  controller:
                                      BlocProvider.of<LoginCubit>(context)
                                          .passwordController),
                            ],
                          ),
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 400),
                          height: 40,
                          child: state is LoginLoading
                              ? const Center(child: CircularProgressIndicator())
                              : CustomButton(
                                  onPressed: () {
                                    if (loginFormKey.currentState!.validate()) {
                                      BlocProvider.of<LoginCubit>(context)
                                          .login();
                                    }
                                  },
                                  text: 'Login',
                                  colorbtn: ColorsApp.AppBarColor,
                                  colortxt: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Do not have an account?',
                              fontSize: 12,
                            ),
                            const SizedBox(width: 5),
                            CustomText(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SingUpPage()));
                              },
                              text: 'Sign Up',
                              fontSize: 12,
                              color: ColorsApp.AppBarColor,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
