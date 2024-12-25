import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({super.key});

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String fullText =
        "This is a long text that will expand or collapse when the button is clicked. You can add more text to see how it looks.";
    String shortText = '${fullText.substring(0, 50)}...';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Expandable Text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Text(
                _isExpanded ? fullText : shortText,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(
                _isExpanded ? "Show Less" : "Show More",
                style: const TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 
