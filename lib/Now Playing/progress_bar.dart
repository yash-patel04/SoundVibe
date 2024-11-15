import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  final double duration;
  final ValueChanged<double> onSeek;

  const ProgressBar({
    super.key,
    required this.progress,
    required this.duration,
    required this.onSeek,
  });

  String formatTime(double seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds.toInt() % 60;
    return "$minutes:${remainingSeconds.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: progress,
          min: 0.0,
          max: duration,
          activeColor: Colors.deepPurple,
          inactiveColor: Colors.white30,
          onChanged: onSeek,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              formatTime(progress),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              formatTime(duration),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
