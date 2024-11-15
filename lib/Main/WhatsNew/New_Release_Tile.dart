import 'package:flutter/material.dart';

import 'New_Release.dart';

class NewReleaseTile extends StatelessWidget {
  final NewRelease newRelease;

  const NewReleaseTile({super.key, required this.newRelease});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        newRelease.albumArtUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(
        newRelease.title,
        style: const TextStyle(
          color: Color.fromARGB(255, 53, 51, 50),
        ),
      ),
      subtitle: Text(
        '${newRelease.artist} • Released ${_formatReleaseDate(newRelease.releaseDate)}',
        style: const TextStyle(
          color: Color.fromARGB(255, 27, 26, 26),
        ),
      ),
      onTap: () {
        // Handle on tap event, e.g., navigate to album details
      },
    );
  }

  String _formatReleaseDate(DateTime dateTime) {
    final Duration difference = DateTime.now().difference(dateTime);
    if (difference.inDays > 1) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 1) {
      return '${difference.inHours} hours ago';
    } else {
      return 'Just now';
    }
  }
}
