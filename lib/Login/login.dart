import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Registration/registration_screen.dart';
import 'custom_text_button.dart';
import 'other_login_option_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: SizedBox(
          child: GestureDetector(
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Color.fromARGB(255, 121, 115, 114),
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              // Make sure to add this image to your assets folder
              height: height * 0.3,
            ),
            SizedBox(height: height * 0.01),
            const Text(
              textAlign: TextAlign.center,
              "Log in to SoundVibe",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
            SizedBox(height: height * 0.03),
            OtherLoginOptionButton(
              text: 'Continue with Email',
              icon: "assets/Icons/email.png",
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CustomTextButton(),
                  ),
                );
              },
              borderColor: true,
              color: true,
            ),
            SizedBox(height: height * 0.01),
            OtherLoginOptionButton(
              text: 'Continue with Google',
              icon: "assets/Icons/google.png",
              onPressed: () {
                // Handle Google login logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            OtherLoginOptionButton(
              text: 'Continue with Meta',
              icon: "assets/Icons/meta.png",
              onPressed: () {
                // Handle Facebook login logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            OtherLoginOptionButton(
              text: 'Continue with Apple',
              icon: "assets/Icons/applelogo.png",
              onPressed: () {
                // Handle Apple login logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            const Text(
              "Don't have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const RegistrationScreen()),
                );
              },
              child: const Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
