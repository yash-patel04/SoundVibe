import 'package:flutter/material.dart';
import 'Custom_Section_Tile.dart';

import 'New_Release.dart';
import 'New_Release_Tile.dart';

class WhatsNewScreen extends StatelessWidget {
  final List<NewRelease> newReleases = [
    NewRelease(
      title: 'Album Title 1',
      artist: 'Artist 1',
      albumArtUrl: 'https://example.com/album1.jpg',
      releaseDate: DateTime.now().subtract(const Duration(days: 2)),
    ),
    NewRelease(
      title: 'Album Title 2',
      artist: 'Artist 2',
      albumArtUrl: 'https://example.com/album2.jpg',
      releaseDate: DateTime.now().subtract(const Duration(days: 5)),
    ),
    NewRelease(
      title: 'Single Title 1',
      artist: 'Artist 3',
      albumArtUrl: 'https://example.com/single1.jpg',
      releaseDate: DateTime.now().subtract(const Duration(days: 7)),
    ),
  ];

  WhatsNewScreen({super.key});

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
          'What\'s New',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const CustomSectionTitle(title: 'New Releases'),
          ...newReleases.map((release) => NewReleaseTile(newRelease: release)),
        ],
      ),
    );
  }
}
