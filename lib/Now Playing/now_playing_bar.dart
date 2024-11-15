import 'dart:async';

import 'package:flutter/material.dart';

import 'play_pause_button.dart';
import 'progress_bar.dart';
import 'song_control_buttons.dart';

class NowPlayingBar extends StatefulWidget {
  const NowPlayingBar({super.key});

  @override
  _NowPlayingBarState createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  bool isPlaying = false;
  double progress = 0.0;
  double songDuration = 240.0; // in seconds (4 minutes)
  Timer? _timer;

  void togglePlayPause() {
    setState(() {
      if (isPlaying) {
        _timer?.cancel(); // Stop the progress
      } else {
        _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
          if (progress < songDuration) {
            setState(() {
              progress += 1;
            });
          } else {
            _timer?.cancel(); // Stop when song completes
          }
        });
      }
      isPlaying = !isPlaying;
    });
  }

  void playNextSong() {
    setState(() {
      progress = 0.0;
      isPlaying = false;
    });
    print("Next song");
  }

  void playPreviousSong() {
    setState(() {
      progress = 0.0;
      isPlaying = false;
    });
    print("Previous song");
  }

  void updateProgress(double newProgress) {
    setState(() {
      progress = newProgress;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
      child: Row(
        children: [
          PlayPauseButton(
            isPlaying: isPlaying,
            onPressed: togglePlayPause,
            // url: '',
          ),
          Expanded(
            child: ProgressBar(
              progress: progress,
              duration: songDuration,
              onSeek: updateProgress,
            ),
          ),
          SongControlButtons(
            onNext: playNextSong,
            onPrevious: playPreviousSong,
            isPlaying: isPlaying,
            onPlayPause: togglePlayPause,
            onRepeat: () {},
            onAddPlaylist: () {},
          ),
        ],
      ),
    );
  }
}
