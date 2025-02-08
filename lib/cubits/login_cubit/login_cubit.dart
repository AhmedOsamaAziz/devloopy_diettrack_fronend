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

        if (response.obj is Map<String, dynamic>) {
          final Map<String, dynamic> data = response.obj;
          if (data.containsKey("access_token")) {
            await prefs.setString("access_token", data["access_token"]);
          }
          if (data.containsKey("refresh_token")) {
            await prefs.setString("refresh_token", data["refresh_token"]);
          }
        }

        // Add first login check
        bool firstLogin = prefs.getBool('firstLogin') ?? true;
        if (firstLogin) {
          await prefs.setBool(
              'firstLogin', false); // Set firstLogin to false after first login
        }

        clearFields();
        emit(LoginSuccess());
      } else {
        emit(LoginError(response.message ?? "Login failed"));
      }
    } on DioException catch (e) {
      emit(LoginError(e.message ?? "An error occurred"));
    } catch (e) {
      emit(LoginError("An unexpected error occurred"));
    }
  }

  /// Method to log out and reset login status.
  Future<void> logout(BuildContext context) async {
    final shouldLogout = await _showLogoutConfirmationDialog(context);
    if (!shouldLogout) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    // Optionally, you can also clear tokens:
    await prefs.remove("access_token");
    await prefs.remove("refresh_token");

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

  /// Check if the user is logged in.
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  /// Check if it's the first login.
  Future<bool> isFirstLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('firstLogin') ?? true;
  }

  void clearFields() {
    emailController.clear();
    passwordController.clear();
  }
}
 //Bearer

 /// CfDJ8AczZa-tJBVIl_flgjhvzl1GVo8d00JakkQsh5IzTHkdE9RMNR8Hw3GGXBByS-W9r3_CjKKkbGDEIlX1Tw007CWLeIxBn84lYK-wdKddulcaC4P_tegkhaN8iWAake_WdjRoRv41SnpkFSgLxtwn_I2DaQ52JrRoq3j9xwf0CJmA0aPMYXdoRdiwTbb-QRySfTdWVAki_QgiPMgvkeQbN5ji8AspMvsvNYujkPG7vdwWmjSgdmq0z7lMl8CxPMXQrDDT5f2Vmn7AoCfxEK7LA0HP3h3rVFDeSpIzWVNf4gLPtqD9jiWGxZoiZUXPl8s8LH9ICx0gKciyRo4eylXZ49Q9Mzxxl8LJcHwEK-NR7JjQJ5zRgEM4XZz-IhNaskyLwgggcrwy1dVZShL94F9A3m9j8foai_k4bFtRm6k82gsXlpjbWt-nCDsj9I0JjKg6nVg61Yf2-c2uRs6ybTmevS3I1JtE7ZgwmRVZvGYppN3JdCgnqqwPd-TZUMNLmOiNMv5IBnkhf-SfZJlBcBq98s-ZBEPtubxqjbkXHSF2zEgb1cu0t6i2mL6oSad9B4i1IkAlZ8ysuXZbUUY0Ja8ctjGr357JcoJUx2hfLVxdZ6gUNNwN_NHYxEyPMcALdT59BgLviBf-wiGSpCL7Z6u_fKKynTOOZCVraaZ775vU1a5I0xQ9J2xDSI_-Q4hCSNs1ig///
 /// 
 /// 
 /// CfDJ8AczZa-tJBVIl_flgjhvzl1kp5kfvi5lgQzuyfrMKHJr85MCYnoBlpwpxG3obxceZ7YWDDoGVnvieIB8j6mVW5HEJ3hBS-hzzpfhDaiXczeKwtNjCDHqHINjQGdMKwm_rYGeJ2HP4MAbN3t-O8jgBQq8IpT9CMxy6uJpSuqD17216jJqzAf3Bk3UqBOhwMXeBObEiXnvcW8rMHSR9xqjOTHkXlpkLzsUp67Bb6h2AKh1RkoaY49wUruSBdwT_BPx6bzazUZokhnkdr9txLTAwRRUM9DTxfFR8gWwyCwK411tFsucxD0Tbid9zecR5AJQB2N97IOdgIZc-UUHfmH_XorlEjjbyAMk7iSwX81-GazgN5yBN6_J6Kts-tHgnW-KSw7AuQsjaaqBnegWk6MJ-ovaxe2oF6kt2quGwrN73fsshfKn5mcHkOxSfpVv8JIR5KdpAuIJ2CnxG0q2x1ouUUV9msAJ_XOWSbGzwrp9hYeq0p9e1umzBQ5WumsgRXzwrbuhx88WgI1YENM23fZaYgLtvm0y4URJm65rAvmqqCc-Vt5XB83-jkJ3F7qhygO-B5jGl-Vt3_HHTxZVCOJuGYRe2KzZ8pSmOPEBMs3CTAlNSex-k6DCFTBzFcc7SrCxD5c4XZ4AMxhy8IY4b-Db2dc1fR8LKEfhuR22vNLK9CZ3nWh2tthUWbr7gFVEGi_hJA