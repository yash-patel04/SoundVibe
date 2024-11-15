import 'package:flutter/material.dart';

import 'library_content.dart';
import 'library_header.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.09),
          Padding(
            padding: const EdgeInsets.symmetric(
              // vertical: 2,
              horizontal: 16,
            ),
            child: Row(
              children: [
                const Text(
                  'Your Library',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        // Handle search action
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        // Handle add action
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const LibraryHeader(),
          // LibraryTabs(),
          // SizedBox(height: height * 0.02),
          const LibraryContent(),
        ],
      ),
    );
  }
}
