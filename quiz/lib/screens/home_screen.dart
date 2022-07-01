// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz/services/quiz.dart';

class HomeScreen extends StatelessWidget {
  final Quiz quiz;
  final Function navigate;
  const HomeScreen(this.quiz, this.navigate, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                ),
              ),
            ),
            SizedBox(height:20,),
            ElevatedButton(
              onPressed: () {
                quiz.start();
                navigate('quiz');
              },
              child: Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
