import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/admin/dashboard/entry_point.dart';
import 'package:ui/screens/auth/login_page/login_page.dart';
import 'package:ui/screens/contact_us/contact_us.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/screens/blog_page/blog_page.dart';
import 'package:ui/screens/process_page/process_page.dart';
import 'package:ui/screens/team_page/team_page.dart';
import 'package:ui/screens/about/about_page.dart';
import 'package:ui/screens/home/home_page.dart';

class CustomDrower extends StatefulWidget {
  const CustomDrower({super.key});

  @override
  State<CustomDrower> createState() => _CustomDrowerState();
}

class _CustomDrowerState extends State<CustomDrower> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  String _selectedOption = 'Options'; // Default dropdown value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.OUTLINECOLOR,
      key: scaffoldKey,
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dropdown Menu
              DropdownButton<String>(
                dropdownColor: ColorsApp.OUTLINECOLOR,
                value: _selectedOption,
                icon: const Icon(Icons.menu, color: ColorsApp.MAINCOLOR),
                iconSize: 24,
                elevation: 16,
                style:
                    const TextStyle(color: ColorsApp.MAINCOLOR, fontSize: 18),
                underline: Container(
                  height: 2,
                  color: ColorsApp.MAINCOLOR,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOption = newValue!;
                  });
                  if (newValue == 'Login') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const LoginPage())); // Replace with your Login page
                  } else if (newValue == 'Logout') {
                    // Perform Logout
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logged out successfully!')),
                    );
                  } else if (newValue == 'Dashboard') {
                    // Navigate to Dashboard
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const EntryPoint())); // Replace with your Dashboard page
                  }
                },
                items: <String>['Options', 'Login', 'Logout', 'Dashboard']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),

              // Navigation Options
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                text: 'Home',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutPage()));
                },
                text: 'About',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TeamPage()));
                },
                text: 'Team',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProcessPage()));
                },
                text: 'Process',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PricingPage()));
                },
                text: 'Pricing',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BlogPage()));
                },
                text: 'Blog',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
              const SizedBox(height: 20),
              CustomText(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ContactUsPage()));
                },
                text: 'Contact Us',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ColorsApp.MAINCOLOR,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
