import 'package:flutter/material.dart';

import 'like_button.dart';
import 'liked_screen.dart'; // Import the LikeButton widget

class TravelDestinationScreen extends StatelessWidget {
  final List<String> destinations = [
    "Paris - The City of Light",
    "New York - The Big Apple",
    "Tokyo - The Heart of Japan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Destinations'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(
                  context, '/liked'); // Navigate to liked screen
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(destinations[index]),
            trailing: LikeButton(
              description: destinations[index],
              onLiked: (description) {
                // Add description to LikedScreen
                LikedScreen.addToLiked(description);
              },
            ),
          );
        },
      ),
    );
  }
}
