import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  final Animation<double> animation;

  const AnimatedLogo({super.key, Key? key2, required this.animation}) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation.value,
      child: SizedBox(
        width: 500,
        height: 500,
        child: Image.asset('assets/logo.jpg'), // Replace with your logo asset
      ),
    );
  }
}