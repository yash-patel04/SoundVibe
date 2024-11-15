import 'package:flutter/material.dart';

class CustomSwitchTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitchTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeColor: Colors.deepPurple,
      inactiveThumbColor: Colors.grey[800],
      inactiveTrackColor: Colors.grey[600],
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromARGB(255, 53, 51, 50),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: Color.fromARGB(255, 27, 26, 26),
        ),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
