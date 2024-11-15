import 'package:flutter/material.dart';

class LikedScreen extends StatelessWidget {
  static List<String> likedDestinations = [];

  static void addToLiked(String description) {
    if (!likedDestinations.contains(description)) {
      likedDestinations.add(description); // Add to liked list
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liked Destinations'),
      ),
      body: likedDestinations.isEmpty
          ? Center(child: Text('No liked destinations yet!'))
          : ListView.builder(
              itemCount: likedDestinations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(likedDestinations[index]),
                );
              },
            ),
    );
  }
}
