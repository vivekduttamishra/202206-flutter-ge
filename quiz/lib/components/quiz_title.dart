import 'package:flutter/material.dart';

class QuizTitle extends StatelessWidget {
  const QuizTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold provides visuals for entire screen
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Welcome to Quiz App!',
        textAlign: TextAlign.center,
        style: TextStyle(
          letterSpacing: 2,
        ),
      ),
    );
  }
}
