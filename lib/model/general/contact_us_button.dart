import 'package:flutter/material.dart';

class ContactUsButton {
  final String text;
  final IconData icon;
  final String url;

  ContactUsButton({
    required this.url,
    required this.text,
    required this.icon,
  });
  static List<ContactUsButton> contactUs = [
    ContactUsButton(
      text: "support@nutritionist.com",
      icon: Icons.mail,
      url: "https://github.com/AhmedOsamaAziz",
    ),
    ContactUsButton(
      text: "+0201152672868",
      icon: Icons.phone,
      url: "tel:+0201152672868",
    ),
    ContactUsButton(
      text: "Some Where in the World",
      icon: Icons.location_on,
      url: "https://www.google.com/maps",
    ),
  ];
}
