import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Language_Tile.dart';

class LanguageScreen extends StatelessWidget {
  final List<String> languages = [
    'English',
    'Spanish',
    'French',
    'German',
    'Chinese',
    'Japanese',
  ];

  LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Select Language',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
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
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return LanguageTile(
            language: languages[index],
            onTap: () {
              // Handle language selection
              if (kDebugMode) {
                print('${languages[index]} selected');
              }
            },
          );
        },
      ),
    );
  }
}
