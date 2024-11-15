import 'package:flutter/material.dart';

import 'play_pause_button.dart';

class SongControlButtons extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final bool isPlaying;
  final VoidCallback onPlayPause;
  final VoidCallback onRepeat;
  final VoidCallback onAddPlaylist;

  const SongControlButtons({
    super.key,
    required this.onNext,
    required this.onPrevious,
    required this.isPlaying,
    required this.onPlayPause,
    required this.onRepeat,
    required this.onAddPlaylist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 24,
          icon: const Icon(Icons.repeat, color: Colors.white),
          onPressed: onRepeat,
        ),
        IconButton(
          iconSize: 40,
          icon: const Icon(Icons.skip_previous, color: Colors.white),
          onPressed: onPrevious,
        ),
        PlayPauseButton(
          isPlaying: isPlaying,
          onPressed: onPlayPause,
          // url: '',
        ),
        IconButton(
          iconSize: 40,
          icon: const Icon(Icons.skip_next, color: Colors.white),
          onPressed: onNext,
        ),
        IconButton(
          iconSize: 24,
          icon: const Icon(Icons.playlist_add, color: Colors.white),
          onPressed: onAddPlaylist,
        ),
      ],
    );
  }
}
