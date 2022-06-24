// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz/services/quiz.dart';

class HomeScreen extends StatelessWidget {
  final Quiz quiz;
  final Function navigate;
  const HomeScreen(this. quiz, this. navigate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo02.png'),
            OutlinedButton(
              onPressed: (){
                quiz.start();
                navigate('quiz');
              }, 
              child:Text('Start'),
              ),
          ],
      ),
    );
  }
}
