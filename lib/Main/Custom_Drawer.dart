import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile/profile_screen.dart';
import '../Registration/registration_screen.dart';
import 'History/Listening_History_Screen.dart';
import 'Settings/Settings_Screen.dart';
import 'WhatsNew/Whats_New_Screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
      backgroundColor: const Color.fromARGB(255, 27, 26, 26),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: height * 0.14,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: DrawerHeader(
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.deepPurple,
                      size: 50.0,
                    ),
                    SizedBox(width: width * 0.03),
                    const Column(
                      children: [
                        Text(
                          "Yash Patel",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "View Profile",
                          style: TextStyle(
                            color: Color.fromARGB(255, 55, 53, 53),
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            hoverColor: Colors.deepPurple,
            leading: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            title: const Text(
              'Add account',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const RegistrationScreen()),
              );
            },
          ),
          ListTile(
            hoverColor: Colors.deepPurple,
            // visualDensity: ,
            leading: const Icon(
              Icons.electric_bolt_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "What's new",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => WhatsNewScreen()),
              );
            },
          ),
          ListTile(
            hoverColor: Colors.deepPurple,
            // visualDensity: ,
            leading: const Icon(
              Icons.history_outlined,
              color: Colors.white,
            ),
            title: const Text(
              "Listening history",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => ListeningHistoryScreen()),
              );
            },
          ),
          ListTile(
            hoverColor: Colors.deepPurple,
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              'Settings and privacy',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const SettingsScreen()),
              );
              // Navigate to settings
            },
          ),
        ],
      ),
    );
  }
}
