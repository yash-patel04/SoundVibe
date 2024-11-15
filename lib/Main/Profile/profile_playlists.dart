import 'package:flutter/material.dart';

class ProfilePlaylists extends StatelessWidget {
  final List<Map<String, String>> playlists = [
    {'title': 'Chill Hits', 'coverUrl': 'https://via.placeholder.com/150'},
    {'title': 'Top Hits 2024', 'coverUrl': 'https://via.placeholder.com/150'},
    // Add more playlists here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Playlists',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: playlists.length,
              itemBuilder: (context, index) {
                return _buildPlaylistItem(playlists[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistItem(Map<String, String> playlist) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(playlist['coverUrl']!),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            playlist['title']!,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
