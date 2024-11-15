import 'package:flutter/material.dart';
import 'Custom_Section_Tile.dart';

import 'History_Item.dart';
import 'History_Item_Tile.dart';

class ListeningHistoryScreen extends StatelessWidget {
  final List<HistoryItem> historyItems = [
    HistoryItem(
      title: 'Song Title 1',
      artist: 'Artist 1',
      albumArtUrl: 'https://example.com/album1.jpg',
      playedAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),
    HistoryItem(
      title: 'Song Title 2',
      artist: 'Artist 2',
      albumArtUrl: 'https://example.com/album2.jpg',
      playedAt: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      title: 'Song Title 3',
      artist: 'Artist 3',
      albumArtUrl: 'https://example.com/album3.jpg',
      playedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
  ];

  ListeningHistoryScreen({super.key});

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
          'Listening History',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const CustomSectionTitle(title: 'Recently Played'),
          ...historyItems.map((item) => HistoryItemTile(historyItem: item)),
        ],
      ),
    );
  }
}
