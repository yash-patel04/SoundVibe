import 'package:SoundVibe/Main/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Home/home_screen.dart';
import '../Library/library.dart';
import '../Now Playing/now_playing_screen.dart';
import '../Premium/premium.dart';
import '../Search/search_screen.dart';
import 'Custom_Drawer.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;

  final List<Widget> _screen = [
    HomeScreen(),
    const SearchScreen(),
    const NowPlayingScreen(),
    const LibraryScreen(),
    const PremiumScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        // surfaceTintColor: Colors.black,
        elevation: 0,
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     // LinearGradient
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       // colors for gradient
        //       colors: [
        //         Colors.black,
        //         Colors.black12,
        //       ],
        //     ),
        //   ),
        // ),
        leading: Center(
          child: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
              color: const Color.fromARGB(255, 27, 26, 26),
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.account_circle,
                size: 40.0,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        title: const Text(
          'SoundVibe',
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w800,
            fontSize: 30,
          ),
        ),
      ),
      body: _screen[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        activeIcons: const [
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.search, color: Colors.deepPurple),
          Icon(Icons.play_circle, color: Colors.deepPurple),
          Icon(Icons.library_music, color: Colors.deepPurple),
          Icon(Icons.workspace_premium, color: Colors.deepPurple),
        ],
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.deepPurple),
          Icon(Icons.search, color: Colors.deepPurple),
          Icon(Icons.play_circle, color: Colors.deepPurple),
          Icon(Icons.library_music, color: Colors.deepPurple),
          Icon(Icons.workspace_premium, color: Colors.deepPurple),
        ],
        color: Colors.black,
        // circleColor: Colors.white,
        height: height * 0.07,
        circleWidth: width * 0.14,
        activeIndex: _selectedIndex,
        onTap: _onItemTapped,
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        circleShadowColor: Colors.deepPurple,
        elevation: 10,
        // gradient: LinearGradient(colors: [0xFF73d1d3, 0xFFBADCC3, 0xFFDBA380].map(Color.new).toList()),
        // circleGradient: LinearGradient(colors: [0xFF73d1d3, 0xFFBADCC3, 0xFFDBA380].map(Color.new).toList()),
      ),
      // CustomBottomNavigationBar(
      //   // selectedIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   activeIndex: _selectedIndex,
      // ),
      // floatingActionButton: NowPlayingBar(),
    );
  }
}
