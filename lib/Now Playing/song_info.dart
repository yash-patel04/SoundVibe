import 'package:flutter/material.dart';

import 'like_button.dart';

class SongInfo extends StatefulWidget {
  const SongInfo({super.key});

  @override
  State<SongInfo> createState() => _SongInfoState();
}

class _SongInfoState extends State<SongInfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: height * 0.02),
        Row(
          children: [
            const Text(
              "Kano Dwarika Walo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: width * 0.3),
            LikeButton(),
          ],
        ),
        SizedBox(height: height * 0.001),
        const Row(
          children: [
            Text(
              // textAlign: TextAlign.start,
              "Rajesh Ahir",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 19,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
