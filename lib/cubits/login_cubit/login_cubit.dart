import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/custom_button.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/services/login_service/login_service_implmentation.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit(this.loginService) : super(LoginInitial()) {
    _checkLoginStatus();
  }

  void login() async {
    emit(LoginLoading());
    try {
      final response = await loginService.login(
        emailController.text,
        passwordController.text,
      );

      // print("Full JSON Response: ${jsonEncode(response.obj)}");

      if (response.status == ResponseStatus.success) {
        if (response.obj != null && response.obj.containsKey('accessToken')) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('isLoggedIn', true);
          await prefs.setString('accessToken', response.obj['accessToken']);
          // print("Access Token Saved: ${response.obj['accessToken']}");
          emit(LoginSuccess());
        } else {
          // print("⚠️ Access token not found in API response!");
          emit(LoginError("Access token not found"));
        }
      }
    } catch (e) {
      // print("Error logging in: $e");
      emit(LoginError("Error logging in"));
    }
  }

  void _clearFields() {
    emailController.clear();
    passwordController.clear();
  }

  Future<void> logout(BuildContext context) async {
    final shouldLogout = await _showLogoutConfirmationDialog(context);
    if (!shouldLogout) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    // Optionally, you can also clear tokens:
    await prefs.remove("access_token");
    await prefs.remove("refresh_token");

    _clearFields();
    emit(LoginInitial());
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  Future<bool> _showLogoutConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: ColorsApp.OUTLINECOLOR,
              title: const Text('Confirm Logout ? 😒'),
              content: const Text('Are you sure you want to log out?'),
              actions: [
                CustomButton(
                  colorbtn: ColorsApp.SecondaryColor,
                  onPressed: () => Navigator.of(context).pop(false),
                  text: 'Cancel',
                ),
                CustomButton(
                  colorbtn: ColorsApp.MAINCOLOR,
                  colortxt: Colors.white,
                  onPressed: () => Navigator.of(context).pop(true),
                  text: 'Logout',
                ),
              ],
            );
          },
        ) ??
        false;
  }

  Future<void> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    if (isLoggedIn) {
      emit(LoginSuccess());
    }
  }
}
