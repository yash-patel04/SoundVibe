import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  const CustomTextField(
  {super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon, color: Colors.white54),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white12,
        suffixIcon: widget.suffixIcon,
        errorStyle: const TextStyle(color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}