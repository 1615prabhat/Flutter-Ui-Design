import 'package:demo/LoginPage.dart';
import 'package:demo/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Prabhat());
}

class Prabhat extends StatelessWidget {
  const Prabhat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
