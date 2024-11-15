import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'bar.dart';
import 'progress_bar.dart';
import 'song_control_buttons.dart';
import 'song_info.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  _NowPlayingScreenState createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  bool isPlaying = false;
  double progress = 0.0;
  double duration = 240.0;
  Timer? _timer;
  // String? songImage = "";
  // String? artistImage = "";
  // String? artistName = "Unknown Artist";
  // Color? songColor = Colors.black;
  // String? songName = "Unknown Track";
  // final player = AudioPlayer();
  //
  // // Use a valid track ID here
  // String musicTrackId =
  //     "https://open.spotify.com/track/1bRMcMbR543qLe7kPmt4M2?si=b9f184ddfcc44f47";

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     _asyncMethod();
  //   });
  // }
  //
  // _asyncMethod() async {
  //   try {
  //     // Spotify credentials and API call
  //     final credentials =
  //         SpotifyApiCredentials(CustomStr.clientId, CustomStr.clientSecret);
  //     final spotify = SpotifyApi(credentials);
  //
  //     var track = await spotify.tracks.get(musicTrackId);
  //
  //     String? tempSongName = track.name;
  //     if (tempSongName != null) {
  //       songName = tempSongName;
  //
  //       // Check artist details
  //       if (track.artists != null && track.artists!.isNotEmpty) {
  //         artistName = track.artists!.first.name ?? "Unknown Artist";
  //         artistImage = track.artists!.first.images?.first.url ?? "";
  //       }
  //
  //       // Album image and color extraction
  //       String? image = track.album?.images?.first.url;
  //       if (image != null) {
  //         songImage = image;
  //         final PaletteGenerator tempSongColor =
  //             await PaletteGenerator.fromImageProvider(
  //                 NetworkImage(songImage!));
  //         songColor = tempSongColor.dominantColor?.color ?? Colors.black;
  //       }
  //
  //       // YouTube video search
  //       final yt = YoutubeExplode();
  //       final searchResults = await yt.search.search(songName!);
  //
  //       if (searchResults.isNotEmpty) {
  //         final video = searchResults.first;
  //         final videoId = video.id.value;
  //         duration = video.duration?.inSeconds.toDouble() ?? 0.0;
  //
  //         setState(() {});
  //
  //         // Fetch audio URL and play
  //         var manifest = await yt.videos.streamsClient.getManifest(videoId);
  //         var audioUrl = manifest.audioOnly.first.url;
  //         player.play(UrlSource(audioUrl.toString()));
  //       } else {
  //         print("No video found on YouTube for $songName");
  //       }
  //     } else {
  //       print("Track name is null");
  //     }
  //   } catch (e) {
  //     print("Error occurred: $e");
  //   }
  // }

  void togglePlayPause() {
    setState(() {
      if (isPlaying) {
        _timer?.cancel(); // Stop the timer when paused
      } else {
        _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
          if (progress < duration!) {
            setState(() {
              progress += 1;
            });
          } else {
            _timer?.cancel(); // Stop the timer when the song is finished
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
    if (kDebugMode) {
      print("Next song");
    }
  }

  void playPreviousSong() {
    setState(() {
      progress = 0.0;
      isPlaying = false;
    });
    if (kDebugMode) {
      print("Previous song");
    }
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.09),
            const SoundBar(),
            SizedBox(height: height * 0.04),
            const SongInfo(),
            SizedBox(height: height * 0.015),
            ProgressBar(
              progress: progress,
              duration: duration,
              onSeek: updateProgress,
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
      ),
    );
  }
}
