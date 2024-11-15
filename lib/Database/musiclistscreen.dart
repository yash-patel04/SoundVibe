//***********************************************
//TODO:Configure this file to show fetched list of songs
//***********************************************

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// import 'firestoreservice.dart';
//
// class MusicListScreen extends StatefulWidget {
//   @override
//   State<MusicListScreen> createState() => _MusicListScreenState();
// }
//
// class _MusicListScreenState extends State<MusicListScreen> {
//   final FirestoreService firestoreService = FirestoreService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Music Catalog')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: firestoreService.fetchSongs(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData)
//             return Center(child: CircularProgressIndicator());
//           var songs = snapshot.data!.docs;
//           return ListView.builder(
//             itemCount: songs.length,
//             itemBuilder: (context, index) {
//               var song = songs[index];
//               return ListTile(
//                 title: Text(song['title']),
//                 subtitle: Text(song['artist']),
//                 onTap: () {
//                   // Handle song play action
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
