
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/table_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: QuizScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}