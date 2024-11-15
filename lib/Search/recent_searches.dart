import 'package:flutter/material.dart';

class RecentSearches extends StatelessWidget {
  final List<String> searches = [
    'Drake',
    'Taylor Swift',
    'Rock Classics',
    'Jazz Vibes',
  ];

  RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: searches.map((search) {
        return ListTile(
          leading: const Icon(
            Icons.history,
            color: Colors.white54,
          ),
          title: Text(
            search,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
          ),
          onTap: () {
            // Handle recent search tap
          },
        );
      }).toList(),
    );
  }
}
