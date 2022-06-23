// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Container(
        color: Colors.yellow,
        width:double.infinity,
        height:double.infinity,
        child: Center(
          child: Text(
            "Quizzy",
            style:TextStyle(
              fontSize:100,
            )
          ),
        ),
      ),
    );
  }

}