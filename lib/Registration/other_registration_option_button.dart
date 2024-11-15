import 'package:flutter/material.dart';

class OtherRegistrationOptionButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;
  final bool color;
  final bool borderColor;

  const OtherRegistrationOptionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
              style: TextStyle(
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
