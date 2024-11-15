import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Custom_Section_Title.dart';
import 'Custom_Switch_Tile.dart';
import 'Privacy_Screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchvalue = false;
  bool _switchvalue2 = false;

  void _Changestate() {
    setState(() {
      !_switchvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SizedBox(
          child: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 121, 115, 114),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const CustomSectionTitle(title: 'Account Settings'),
          CustomSwitchTile(
            title: 'Receive Notifications',
            subtitle: 'Enable or disable push notifications',
            value: _switchvalue,
            onChanged: (bool newValue) {
              setState(() {
                _switchvalue = newValue;
                _Changestate();
              });
              // Handle switch change
            },
          ),
          CustomSwitchTile(
            title: 'Download via Wi-Fi Only',
            subtitle: 'Avoid data charges by downloading only over Wi-Fi',
            value: _switchvalue2,
            onChanged: (bool newValue) {
              setState(() {
                _switchvalue2 = newValue;
                _Changestate();
              });
              // Handle switch change
            },
          ),
          const CustomSectionTitle(title: 'Privacy'),
          ListTile(
            title: const Text(
              'Privacy Settings',
              style: TextStyle(
                color: Color.fromARGB(255, 69, 66, 65),
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const PrivacyScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
