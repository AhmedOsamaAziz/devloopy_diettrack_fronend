import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/services/login_service/login_service_implmentation.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit(this.loginService) : super(LoginInitial());

  void login() async {
    emit(LoginLoading());
    try {
      final response = await loginService.login(
          emailController.text, passwordController.text);

      if (response.status == ResponseStatus.success) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        // Add first login check
        bool firstLogin = prefs.getBool('firstLogin') ?? true;
        if (firstLogin) {
          await prefs.setBool('firstLogin', false); // Set firstLogin to false after first login
        }

        clearFields();
        emit(LoginSuccess());
      } else {
        emit(LoginError(response.message!));
      }
    } on DioException catch (e) {
      emit(LoginError(e.message ?? "An error occurred"));
    } catch (e) {
      emit(LoginError("An unexpected error occurred"));
    }
  }

  // Method to log out and reset login status
  Future<void> logout(BuildContext context) async {
    final shouldLogout = await _showLogoutConfirmationDialog(context);
    if (!shouldLogout) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    clearFields();

    emit(LoginInitial());
  }

  Future<bool> _showLogoutConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: ColorsApp.OUTLINECOLOR,
              title: const Text('Confirm Logout'),
              content: const Text('Are you sure you want to log out?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false); // User cancels logout
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(ColorsApp.SecondaryColor)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Text('Logout',
                      style: TextStyle(color: ColorsApp.MAINCOLOR)),
                ),
              ],
            );
          },
        ) ??
        false;
  }

  // Check if the user is logged in
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  // Check if it's the first login
  Future<bool> isFirstLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('firstLogin') ?? true;
  }

  void clearFields() {
    emailController.clear();
    passwordController.clear();
  }
}

