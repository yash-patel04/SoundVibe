import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final String description; // Description to pass to the liked screen
  final Function(String) onLiked; // Callback to handle the liked description

  const LikeButton({
    Key? key,
    required this.description,
    required this.onLiked,
  }) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        color: isLiked ? Colors.red : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        if (isLiked) {
          widget.onLiked(widget.description); // Pass the description when liked
        }
      },
    );
  }
}
