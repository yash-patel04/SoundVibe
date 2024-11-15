import 'package:flutter/material.dart';
import 'Custom_Privacy_Option.dart';

import 'Privacy_Option.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _switchvalue1 = false;
  bool _switchvalue2 = false;
  bool _switchvalue3 = false;

  @override
  Widget build(BuildContext context) {
    final List<PrivacyOption> privacyOptions = [
      PrivacyOption('Share Usage Data', _switchvalue1),
      PrivacyOption('Personalized Ads', _switchvalue2),
      PrivacyOption('Share with Partners', _switchvalue3),
    ];
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
          'Privacy Settings',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: privacyOptions.length,
        itemBuilder: (context, index) {
          return CustomPrivacyOption(
            option: privacyOptions[index],
            onChanged: (bool newValue) {
              if (index == 0) {
                setState(() {
                  _switchvalue1 = newValue;
                });
              } else if (index == 1) {
                setState(() {
                  _switchvalue2 = newValue;
                });
              } else if (index == 2) {
                setState(() {
                  _switchvalue3 = newValue;
                });
              }
              // Handle privacy option change
            },
          );
        },
      ),
    );
  }
}
