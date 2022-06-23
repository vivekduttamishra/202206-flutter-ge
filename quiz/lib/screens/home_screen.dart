// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo02.png'),
            OutlinedButton(
              onPressed: (){}, 
              child:Text('Start'),
              ),
          ],
      ),
    );
  }
}
