class HistoryItem {
  final String title;
  final String artist;
  final String albumArtUrl;
  final DateTime playedAt;

  HistoryItem({
    required this.title,
    required this.artist,
    required this.albumArtUrl,
    required this.playedAt,
  });
}
