import 'package:flutter/material.dart';

class OtherLoginOptionButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;
  final bool color;
  final bool borderColor;

  const OtherLoginOptionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ? Colors.deepPurple : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(
              color: borderColor ? Colors.deepPurple : Colors.white,
              width: 2.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 30,
              width: 30,
            ),
            SizedBox(width: width * 0.02),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
