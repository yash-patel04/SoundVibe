import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Login/login.dart';
import '../Main/layout.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String _errorMessage = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  bool obscureText = true;

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => const Layout()),
      );
      // Navigate to the next screen or perform the login action
    }
  }

  void _toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: height * 0.02),
                  Image.asset(
                    'assets/logo.jpg',
                    // Make sure to add this image to your assets folder
                    height: height * 0.25,
                  ),
                  SizedBox(height: height * 0.05),
                  CustomTextField(
                    controller: _emailController,
                    hintText: 'Email or Username',
                    icon: Icons.person_outline,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: height * 0.01),
                  CustomTextField(
                    controller: _passwordController,
                    hintText: 'Create a Password',
                    icon: Icons.lock_outline,
                    obscureText: obscureText,
                    validator: (value) {
                      password = value!;
                      _errorMessage = '';

                      //if password is not Empty
                      if (value.isNotEmpty) {
                        // Password length greater than 6
                        if (value.length < 6) {
                          _errorMessage +=
                              '• Password must be longer than 6 characters.\n';
                        }

                        // Contains at least one uppercase letter
                        if (!value.contains(RegExp(r'[A-Z]'))) {
                          _errorMessage += '• Uppercase letter is missing.\n';
                        }

                        // Contains at least one lowercase letter
                        if (!value.contains(RegExp(r'[a-z]'))) {
                          _errorMessage += '• Lowercase letter is missing.\n';
                        }

                        // Contains at least one digit
                        if (!value.contains(RegExp(r'[0-9]'))) {
                          _errorMessage += '• Digit is missing.\n';
                        }

                        // Contains at least one special character
                        if (!value.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                          _errorMessage += '• Special character is missing.\n';
                        }
                        return _errorMessage.isEmpty ? null : _errorMessage;
                      } else {
                        return 'Please enter your password.';
                      }
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        _toggle;
                        // Update the state i.e. toggle the state of passwordVisible variable
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    hintText: 'Confirm Password',
                    icon: Icons.lock_outline,
                    obscureText: obscureText,
                    validator: (value) {
                      confirmPassword = value!;
                      if (value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (confirmPassword != password) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        _toggle;
                        // Update the state i.e. toggle the state of passwordVisible variable
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  CustomButton(text: 'SIGN UP', onPressed: _login),
                  SizedBox(height: height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
