import 'package:SoundVibe/Home/playlist_circle.dart';
import 'package:flutter/material.dart';

import 'greeting_widget.dart';
import 'playlist_card.dart';
import 'playlist_model.dart';
import 'section_header.dart';

class HomeScreen extends StatelessWidget {
  final List<Playlist> recentlyPlayed = [
    Playlist(name: 'Darshan Raval', imagePath: 'assets/darshanraval.jpeg'),
    Playlist(name: 'Top Hits', imagePath: 'assets/tophits.jpg'),
    Playlist(name: 'Shreya Ghoshal', imagePath: 'assets/shreyaghoshal.jpeg'),
    Playlist(name: 'Romantic Mix', imagePath: 'assets/romanticmix.jpeg'),
    Playlist(name: 'Pop Mix', imagePath: 'assets/popmix.jpeg'),
    Playlist(name: 'Arijit Singh', imagePath: 'assets/arijitsingh.jpeg'),
    Playlist(name: 'Sad Hindi Medolies', imagePath: 'assets/sadhindi.jpeg'),
    Playlist(name: 'Chill Vibes', imagePath: 'assets/chillvibes.jpeg'),
    Playlist(name: 'Happy Mix', imagePath: 'assets/happymix.jpeg'),
    // Add more playlists
  ];

  final List<Playlist> recommended = [
    Playlist(name: 'Focus Flow', imagePath: 'assets/focusflow.jpeg'),
    Playlist(name: 'Mood Booster', imagePath: 'assets/moodbooster.jpeg'),
    Playlist(name: 'Coding Beats', imagePath: 'assets/codingbeats.jpeg'),
    Playlist(name: 'Long Drive', imagePath: 'assets/longdrive.jpeg'),
    Playlist(name: 'Navratri Special', imagePath: 'assets/navratri.jpeg'),
    // Add more playlists
  ];

  final List<Playlist> recentListening = [
    Playlist(name: 'I-Pop Mohabbat', imagePath: 'assets/popmohabbat.jpeg'),
    Playlist(name: 'All Out Hindi 00s', imagePath: 'assets/allouthindi.jpeg'),
    Playlist(name: 'I-Pop Sad Feels', imagePath: 'assets/popsadfeels.jpeg'),
    Playlist(name: 'I-Pop Superhits', imagePath: 'assets/popsuperhits.jpeg'),
    Playlist(name: 'Emraan Hashmi', imagePath: 'assets/emraanhashmi.jpeg'),
    Playlist(name: 'Katrin Kaif', imagePath: 'assets/katrinkaif.jpeg'),
    Playlist(name: 'Shahid Kapoor', imagePath: 'assets/shahidkapoor.jpeg'),
    // Add more playlists
  ];

  final List<Playlist> indiaBest = [
    Playlist(name: 'I-Pop Icons', imagePath: 'assets/popicons.jpeg'),
    Playlist(
        name: 'Bollywood Central', imagePath: 'assets/bollywoodcentral.jpeg'),
    Playlist(name: 'Punjabi 101', imagePath: 'assets/punjabi101.jpeg'),
    Playlist(
        name: 'Tollywood Pearls', imagePath: 'assets/tollywoodpearls.jpeg'),
    Playlist(name: 'Rap 91', imagePath: 'assets/rap91.jpeg'),
    Playlist(name: 'Kollywood Cream', imagePath: 'assets/kollywoodcream.jpeg'),
    // Add more playlists
  ];

  final List<Playlist> madeForYou = [
    Playlist(name: 'Daily Mix 1', imagePath: 'assets/dailymix1.jpeg'),
    Playlist(name: 'Daily Mix 2', imagePath: 'assets/dailymix2.jpeg'),
    Playlist(name: 'Daily Mix 3', imagePath: 'assets/dailymix3.jpeg'),
    Playlist(name: 'Daily Mix 4', imagePath: 'assets/dailymix4.jpeg'),
    Playlist(name: 'Daily Mix 5', imagePath: 'assets/dailymix5.jpeg'),
    // Add more playlists
  ];

  final List<Playlist> artists = [
    Playlist(name: 'Darshan Raval', imagePath: 'assets/darshanraval.jpeg'),
    Playlist(name: 'Shreya Ghoshal', imagePath: 'assets/shreyaghoshal.jpeg'),
    Playlist(name: 'Arijit Singh', imagePath: 'assets/arijitsingh.jpeg'),
    Playlist(name: 'Hardy Sandhu', imagePath: 'assets/hardysandhu.jpeg'),
    // Add more playlists
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.09),
              const GreetingWidget(),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'Recently Played'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recentlyPlayed.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: recentlyPlayed[index]);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'Recommended for today'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommended.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: recommended[index]);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'Based on your recent listening'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recentListening.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: recentListening[index]);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'Your favorite Artists'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: artists.length,
                  itemBuilder: (context, index) {
                    return PlaylistCircle(playlist: artists[index]);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'India\'s Best'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: indiaBest.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: indiaBest[index]);
                  },
                ),
              ),
              SizedBox(height: height * 0.02),
              const SectionHeader(title: 'Made for You'),
              SizedBox(height: height * 0.01),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: madeForYou.length,
                  itemBuilder: (context, index) {
                    return PlaylistCard(playlist: madeForYou[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
