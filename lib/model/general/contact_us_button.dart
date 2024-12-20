import 'package:flutter/material.dart';

class ContactUsButton {
  final String text;
  final IconData icon;

  ContactUsButton({
    required this.text,
    required this.icon,
  });
  static List<ContactUsButton> contactUs = [
    ContactUsButton(text: "support@nutritionist.com", icon: Icons.mail),
    ContactUsButton(text: "+002000020200", icon: Icons.phone),
    ContactUsButton(text: "Some Where in the World", icon: Icons.location_on),
  ];
}
