import 'package:SoundVibe/Controller/song_data_controller.dart';
import 'package:SoundVibe/Library/tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LibraryContent extends StatelessWidget {
  const LibraryContent({super.key});

  final List<Map<String, String>> content = const [
    {'title': 'Cloud Songs', 'subtitle': 'Playlist • 10 songs'},
    {'title': 'Device Songs', 'subtitle': 'Playlist • 1000 songs'},
    {'title': 'Liked Songs', 'subtitle': 'Playlist • 100 songs'},
    {'title': 'My Playlist', 'subtitle': 'Playlist • 50 songs'},
    {'title': 'Favorite Artists', 'subtitle': 'Artist'},
    {'title': 'Top Albums', 'subtitle': 'Album • 20 songs'},
  ];

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    return Expanded(
      child: ListView.builder(
        itemCount: content.length,
        itemBuilder: (context, index) {
          final item = content[index];
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.music_note, color: Colors.white),
            title: Text(
              item['title']!,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              item['subtitle']!,
              style: const TextStyle(color: Colors.white70),
            ),
            onTap: () {
              if ('title' == 'Cloud Songs') {
                InkWell(
                  onTap: () {
                    songDataController.isDeviceSong.value = false;
                  },
                );
              }
              if ('title' == 'Device Songs') {
                InkWell(
                  onTap: () {
                    songDataController.getLocalSongs();
                    songDataController.isDeviceSong.value = true;
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SongTile(),
                      ),
                    );
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
