
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'screens/home_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/table_screen.dart';
import 'services/quiz.dart';

class MyApp extends StatefulWidget{

  MyApp({Key? key}) : super(key: key);
  

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Quiz quiz=Quiz(questions);
  
  String currentScreen="home";

  get screen {
    Map<String,Function> screens={
        "home": ()=>HomeScreen(quiz,navigate),
        "quiz":()=>QuizScreen(quiz,navigate),
    };

    return screens[currentScreen];
  }

  
  navigate(screen){
    setState((){currentScreen=screen;});
  }


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}