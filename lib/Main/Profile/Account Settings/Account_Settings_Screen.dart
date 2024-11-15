import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Language/Language_Screen.dart';
import 'Custom_Section_Tile.dart';

import 'Settings_Tile.dart';
import 'User_Account.dart';

class AccountSettingsScreen extends StatelessWidget {
  final UserAccount userAccount = UserAccount(
    username: 'JohnDoe',
    email: 'johndoe@example.com',
    profilePictureUrl: 'https://example.com/profile.jpg',
  );

  AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SizedBox(
          child: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromARGB(255, 121, 115, 114),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text(
          'Account Settings',
          style: TextStyle(
            color: Color.fromARGB(255, 121, 115, 114),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const CustomSectionTitle(title: 'Profile'),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userAccount.profilePictureUrl),
              radius: 30,
            ),
            title: Text(
              userAccount.username,
              style: const TextStyle(
                color: Color.fromARGB(255, 53, 51, 50),
              ),
            ),
            subtitle: Text(
              userAccount.email,
              style: const TextStyle(
                color: Color.fromARGB(255, 27, 26, 26),
              ),
            ),
            onTap: () {
              // Navigate to profile edit screen
            },
          ),
          const Divider(),
          const CustomSectionTitle(title: 'Settings'),
          GestureDetector(
            child: SettingsTile(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {
                // Handle change password
              },
            ),
          ),
          GestureDetector(
            child: SettingsTile(
              icon: Icons.notifications,
              title: 'Notification Preferences',
              onTap: () {
                // Handle notification preferences
              },
            ),
          ),
          GestureDetector(
            child: SettingsTile(
              icon: Icons.language,
              title: 'Language',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => LanguageScreen()),
                );
              },
            ),
          ),
          // GestureDetector(
          //   child: SettingsTile(
          //     icon: Icons.exit_to_app,
          //     title: 'Sign Out',
          //     onTap: () {
          //       // Handle sign out
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
