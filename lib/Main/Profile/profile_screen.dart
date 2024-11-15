// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'Account Settings/Account_Settings_Screen.dart';
//
// import 'profile_header.dart';
// import 'profile_option.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text('Profile', style: TextStyle(
//             color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500)),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         leading: SizedBox(
//           child: GestureDetector(
//             child: const Icon(
//               Icons.arrow_back_outlined,
//               color: Color.fromARGB(255, 121, 115, 114),
//               size: 30,
//             ),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const ProfileHeader(), // Custom widget for profile header
//             Divider(color: Colors.grey[800]),
//             ProfileOption(
//               icon: Icons.settings,
//               title: 'Account Settings',
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   CupertinoPageRoute(builder: (context) => AccountSettingsScreen()),
//                 );
//               },
//             ),
//             ProfileOption(
//               icon: Icons.language,
//               title: 'Language',
//               onTap: () {
//                 // Navigate to language settings screen
//               },
//             ),
//             ProfileOption(
//               icon: Icons.lock_outline,
//               title: 'Privacy Policy',
//               onTap: () {
//                 // Navigate to privacy policy screen
//               },
//             ),
//             ProfileOption(
//               icon: Icons.help_outline,
//               title: 'Help',
//               onTap: () {
//                 // Navigate to help screen
//               },
//             ),
//             ProfileOption(
//               icon: Icons.logout,
//               title: 'Log Out',
//               onTap: () {
//                 // Implement logout functionality
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'profile_action_buttons.dart';
import 'profile_header.dart';
import 'profile_playlists.dart';
import 'profile_stats.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileStats(),
            const SizedBox(height: 20),
            ProfileActionButtons(),
            const SizedBox(height: 30),
            ProfilePlaylists(), // Displays playlists or saved albums
          ],
        ),
      ),
    );
  }
}
