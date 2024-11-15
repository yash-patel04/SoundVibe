import 'package:flutter/material.dart';

import 'History_Item.dart';

class HistoryItemTile extends StatelessWidget {
  final HistoryItem historyItem;

  const HistoryItemTile({super.key, required this.historyItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        historyItem.albumArtUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(
        historyItem.title,
        style: const TextStyle(
          color: Color.fromARGB(255, 53, 51, 50),
        ),
      ),
      subtitle: Text(
          '${historyItem.artist} • ${_formatTimeAgo(historyItem.playedAt)}',
        style: const TextStyle(
          color: Color.fromARGB(255, 27, 26, 26),
        ),
      ),
      onTap: () {
        // Handle on tap event, e.g., navigate to song details
      },
    );
  }

  String _formatTimeAgo(DateTime dateTime) {
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
