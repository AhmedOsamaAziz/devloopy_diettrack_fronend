import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/cubits/sing_up_cubit/singup_cubit.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/screens/login_page/login_page.dart';
import 'package:ui/widgets/custom_button.dart';
import 'package:ui/widgets/custom_text.dart';

import 'custom_form_feild.dart';

// ignore: must_be_immutable
class SingUpForm extends StatelessWidget {
  SingUpForm({super.key});

  GlobalKey<FormState> singUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingupCubit, SingupState>(
      listener: (context, state) {
        if (state is SingupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign up created successfully')));
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        } else if (state is SingupFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: singUpFormKey,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.53,
              width: 600,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      decoration: const BoxDecoration(),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomField(
                                text: 'Full Name',
                                hintText: 'Enter your Name',
                              ),
                              SizedBox(width: 10),
                              CustomField(
                                text: 'Email',
                                hintText: 'Enter your Email',
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const CustomField(
                            text: 'Password',
                            hintText: 'Enter your Password',
                          ),
                          const SizedBox(height: 10),
                          const CustomField(
                            text: 'Repeat Password',
                            hintText: 'Repeat your password',
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: state is SingupLoading
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : CustomButton(
                                    onPressed: () {
                                      if (singUpFormKey.currentState!
                                          .validate()) {
                                        BlocProvider.of<SingupCubit>(context)
                                            .singUp();
                                      }
                                    },
                                    text: 'Register',
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
                                text: 'Are you have an account?',
                                fontSize: 12,
                              ),
                              const SizedBox(width: 10),
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
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.text,
    required this.hintText,
  });

  final String text;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: text,
              fontSize: getResponsiveFontSize(context, fontSize: 12)),
          const SizedBox(height: 5),
          CustomFromFeild(
            controller:
                BlocProvider.of<SingupCubit>(context).fullNameController,
            icon: Icons.person_outline_rounded,
            hintText: 'Enter your Name',
          )
        ],
      ),
    );
  }
}
