import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login/Login.dart';
import 'custom_text_button.dart';
import 'other_registration_option_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              "Sign up to start listening",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
            SizedBox(height: height * 0.03),
            OtherRegistrationOptionButton(
              text: 'Sign up free',
              icon: "assets/Icons/signup.png",
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const CustomTextButton()));
              },
              borderColor: true,
              color: true,
            ),
            SizedBox(height: height * 0.01),
            OtherRegistrationOptionButton(
              text: 'Continue with Google',
              icon: "assets/Icons/google.png",
              onPressed: () {
                // Handle Google Registration logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            OtherRegistrationOptionButton(
              text: 'Continue with Meta',
              icon: "assets/Icons/meta.png",
              onPressed: () {
                // Handle Facebook Registration logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            OtherRegistrationOptionButton(
              text: 'Continue with Apple',
              icon: "assets/Icons/applelogo.png",
              onPressed: () {
                // Handle Apple Registration logic here
              },
              borderColor: false,
              color: false,
            ),
            SizedBox(height: height * 0.01),
            const Text(
              "Already have an account?",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text(
                "Log in",
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
