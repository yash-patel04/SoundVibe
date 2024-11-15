import 'package:flutter/material.dart';

class CustomSectionTitle extends StatelessWidget {
  final String title;

  const CustomSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 69, 66, 65),
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
