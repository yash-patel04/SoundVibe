import 'package:flutter/material.dart';

class LibraryHeader extends StatefulWidget {
  const LibraryHeader({super.key});

  @override
  State<LibraryHeader> createState() => _LibraryHeaderState();
}

class _LibraryHeaderState extends State<LibraryHeader> {
  int selectedIndex = 0;

  var options = ['Playlists', 'Artists', 'Albums'];

  @override
  Widget build(BuildContext context) {
    List<Widget> filterList = List.generate(
      options.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.deepPurple : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              // color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  options[index],
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: filterList,
      ),
    );
  }
}
