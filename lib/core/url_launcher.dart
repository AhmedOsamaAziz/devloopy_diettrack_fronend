import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> handleButtonClick({
  required BuildContext context,
  required String url,
  required String buttonText,
}) async {
  final Uri uri = Uri.parse(url);

  if (!context.mounted) return;

  final canLaunch = await canLaunchUrl(uri);

  if (!context.mounted) return;

  if (canLaunch) {
    await launchUrl(uri);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Could not launch $buttonText. Please try again.'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
