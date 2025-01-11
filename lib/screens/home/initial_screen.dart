import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/home/home_page.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  Widget? _startScreen;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  /// Checks the login status from shared preferences and updates the start screen

  Future<void> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    setState(() {
      _startScreen = isLoggedIn ? const HomePage() : const LoginPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_startScreen == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return _startScreen!;
  }
}
