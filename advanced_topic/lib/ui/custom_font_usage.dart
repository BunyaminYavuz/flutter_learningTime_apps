import 'package:flutter/material.dart';

class CustomFontUsage extends StatelessWidget {
  const CustomFontUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          "Costum Font Usage",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
              fontFamily: "HandWriting"),
        ),
      );
  }
}