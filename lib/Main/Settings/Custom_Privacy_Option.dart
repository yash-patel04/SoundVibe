import 'package:flutter/material.dart';

import 'Privacy_Option.dart';

class CustomPrivacyOption extends StatelessWidget {
  final PrivacyOption option;
  final ValueChanged<bool> onChanged;

  const CustomPrivacyOption(
      {super.key, required this.option, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeColor: Colors.deepPurple,
      inactiveThumbColor: Colors.grey[800],
      inactiveTrackColor: Colors.grey[600],
      title: Text(
        option.title,
        style: const TextStyle(
          color: Color.fromARGB(255, 53, 51, 50),
        ),
      ),
      value: option.isEnabled,
      onChanged: onChanged,
    );
  }
}
