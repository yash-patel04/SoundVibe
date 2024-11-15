import 'package:flutter/material.dart';

class ProfileActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildActionButton('Edit Profile', Icons.edit, Colors.white),
          _buildActionButton('Share', Icons.share, Colors.white),
          _buildActionButton('Follow', Icons.add_circle_outline, Colors.green),
        ],
      ),
    );
  }

  Widget _buildActionButton(String label, IconData icon, Color iconColor) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 28),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
