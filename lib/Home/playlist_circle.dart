import 'package:flutter/material.dart';

import 'playlist_model.dart';

class PlaylistCircle extends StatelessWidget {
  final Playlist playlist;

  const PlaylistCircle({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.4,
      margin: const EdgeInsets.only(right: 2),
      // radius: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(67), // Image radius
              child: Image.asset(playlist.imagePath, fit: BoxFit.cover),
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(100.0),
          //   child: Image.asset(
          //     playlist.imagePath,
          //     height: height * 0.15,
          //     width: width * 0.5,
          //     fit: BoxFit.contain,
          //   ),
          // ),
          SizedBox(height: height * 0.01),
          Text(
            playlist.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
