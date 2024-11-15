import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SectionHeader({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
          const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        if (onTap != null)
          GestureDetector(
            onTap: onTap,
            child: const Text(
              'See All',
              style: TextStyle(color: Colors.greenAccent),
            ),
          ),
      ],
    );
  }
}