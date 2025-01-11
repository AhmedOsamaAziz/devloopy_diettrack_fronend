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
                        builder: (context) => const EntryPoint()));
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
              _buildNavButton(context, 'Home', 0, const HomePage()),
              _buildNavButton(context, 'About', 1, const AboutPage()),
              _buildNavButton(context, 'Team', 2, const TeamPage()),
              _buildNavButton(context, 'Prosses', 3, const ProcessPage()),
              _buildNavButton(context, 'Pricing', 4, const PricingPage()),
              _buildNavButton(context, 'Blog', 5, const BlogPage()),
              _buildNavButton(context, 'Contact', 6, const ContactUsPage()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildNavButton(
    BuildContext context, String text, int index, Widget page) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), // Add spacing
      child: CustomText(
        text: text,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: ColorsApp.SecondaryColor, // Inactive button color
      ),
    ),
  );
}
