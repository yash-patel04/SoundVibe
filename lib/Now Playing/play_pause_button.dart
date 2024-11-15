import 'package:flutter/material.dart';

class PlayPauseButton extends StatefulWidget {
  final bool isPlaying;
  final VoidCallback onPressed;

  // final String url;

  const PlayPauseButton({
    super.key,
    required this.isPlaying,
    required this.onPressed,
    // required this.url,
  });

  @override
  State<PlayPauseButton> createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  // late AudioPlayer _audioPlayer;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _audioPlayer = AudioPlayer();
  //   _audioPlayer.setUrl(widget.url);
  // }
  //
  // @override
  // void dispose() {
  //   _audioPlayer.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 81,
      icon: Icon(
        widget.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
        color: Colors.deepPurple,
      ),
      onPressed: widget.onPressed,
    );
  }
}
