// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.40),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 31, 30, 36),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
