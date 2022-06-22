// third party library import
import 'package:flutter/material.dart';

void main() {
  //print('Hellow World');
  runApp(const Center(
    child: Text(
      'Hello World',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 123, 123, 231),
          fontWeight: FontWeight.w700),
    ),
  ));
}
