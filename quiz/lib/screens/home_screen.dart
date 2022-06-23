// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Center(
          child: Text(
            "Quizzy",
            style: TextStyle(
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}
