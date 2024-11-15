import 'package:flutter/material.dart';

import 'playlist_model.dart';

class SquareTile extends StatelessWidget {
  final Playlist playlist;

  const SquareTile({super.key, required this.playlist});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Handle tile tap
      },
      child: Stack(
        children: [
          // Container(
          //   // height: height * 0.5,
          //   // width: width * 0.1,
          //   margin: const EdgeInsets.only(right: 15),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              playlist.imagePath,
              height: 100,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(height: height * 0.3),
          // Row(
          //   children: [
          Text(
            playlist.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.2),
            child: IconButton(
              icon: const Icon(Icons.play_arrow, color: Colors.white),
              onPressed: () {
                // Handle play action
              },
            ),
          ),
        ],
      ),
      //   ],
      // ),
      //     ),
      //   ],
      // ),
    );
  }
}

//   height: height * 2,
//   // width: width * 0.09,
//   decoration: BoxDecoration(
//     color: Colors.white12,
//     borderRadius: BorderRadius.circular(8.0),
//   ),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(8.0),
//         child: Image.asset(
//           playlist.imagePath,
//           // height: height * 0.1,
//           // width: width * 0.3,
//           fit: BoxFit.cover,
//         ),
//       ),
//       SizedBox(height: height * 0.04),
//       Expanded(
//         child: Text(
//           playlist.name,
//           style: const TextStyle(color: Colors.white),
//           overflow: TextOverflow.ellipsis,
//         ),
//       ),

// IconButton(
// icon: const Icon(Icons.play_arrow, color: Colors.white),
// onPressed: () {
// // Handle play action
// },
// ),
