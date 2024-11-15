import 'package:flutter/material.dart';

class LanguageTile extends StatelessWidget {
  final String language;
  final VoidCallback onTap;

  const LanguageTile({super.key,
    required this.language,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        language,
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 69, 66, 65),
        ),
      ),
      trailing: const Icon(
        Icons.language,
        color: Colors.deepPurple,
      ),
      onTap: onTap,
    );
  }
}