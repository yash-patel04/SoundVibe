import 'package:flutter/material.dart';

import 'genre_card.dart';
import 'recent_searches.dart';
import 'search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.09),
              const SearchBarr(),
              SizedBox(height: height * 0.02),
              const Text(
                'Your Top Genres',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.01),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  GenreCard(
                    title: 'Pop',
                    color: Colors.pinkAccent,
                    imageUrl: 'assets/pop_genre.jpg',
                  ),
                  GenreCard(
                    title: 'Hip-Hop',
                    color: Colors.orangeAccent,
                    imageUrl: 'assets/hiphop_genre.jpg',
                  ),
                  GenreCard(
                    title: 'Rock',
                    color: Colors.blueAccent,
                    imageUrl: 'assets/rock_genre.jpg',
                  ),
                  GenreCard(
                    title: 'Jazz',
                    color: Colors.purpleAccent,
                    imageUrl: 'assets/jazz_genre.jpg',
                  ),
                  GenreCard(
                    title: 'Sad',
                    color: Colors.pink,
                    imageUrl: 'assets/rock_genre.jpg',
                  ),
                  GenreCard(
                    title: 'Bollywood',
                    color: Colors.red,
                    imageUrl: 'assets/jazz_genre.jpg',
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              const Text(
                'Recent Searches',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.01),
              RecentSearches(),
              SizedBox(height: height * 0.09),
            ],
          ),
        ),
      ),
    );
  }
}
