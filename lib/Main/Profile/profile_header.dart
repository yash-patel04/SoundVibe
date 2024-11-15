// import 'package:flutter/material.dart';
//
// class ProfileHeader extends StatelessWidget {
//   const ProfileHeader({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         children: [
//           const CircleAvatar(
//             radius: 40,
//             backgroundImage: AssetImage(
//                 'assets/profile_picture.jpg'), // Use actual user image
//           ),
//           const SizedBox(width: 16),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'John Doe', // User name
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 '200 Followers',
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double profileImageSize =
        screenWidth * 0.25; // Responsive profile image size

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: profileImageSize / 2,
            backgroundImage: NetworkImage(
                'https://your-profile-image-url.com'), // Replace with actual profile image URL
          ),
          SizedBox(height: 20),
          Text(
            'User Name', // Replace with dynamic data
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '100k Followers', // Replace with dynamic data
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
