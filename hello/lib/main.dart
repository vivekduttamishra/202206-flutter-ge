// third party library import
import 'package:flutter/material.dart';
import 'package:hello/screens/home_screen.dart';

void main() {
  //print('Hellow World');
  //runApp(MaterialApp(home: Center(child: Text('Hello World'))));
  runApp(
    // provides necessary values for material guidelines
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
