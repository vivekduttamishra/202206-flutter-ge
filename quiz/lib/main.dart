// third party library import
import 'package:flutter/material.dart';
import 'package:quiz/screens/quiz_home.dart';

void main() {
  //print('Hellow World');
  //runApp(MaterialApp(home: Center(child: Text('Hello World'))));
  runApp(
    // provides necessary values for material guidelines
    const MaterialApp(
      home: QuizHome(),
    ),
  );
}
