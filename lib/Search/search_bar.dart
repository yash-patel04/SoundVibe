import 'package:flutter/material.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField( // Set cursor color to cyan
      decoration: InputDecoration(
        filled: true, // This is necessary to apply the fillColor
        fillColor: Colors.black12, // Set hover color to cyan
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        hintText: 'Artists, songs, or podcasts',
        hintStyle: const TextStyle(color: Colors.white), // White hint text for contrast
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      style: const TextStyle(color: Colors.white), // White text for contrast
    );
  }
}
