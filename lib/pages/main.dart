import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:myapp/pages/login.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: myLogin());
  }
}
