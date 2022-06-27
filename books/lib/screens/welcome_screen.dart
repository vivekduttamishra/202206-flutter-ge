
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('World of Great Books',
            style:TextStyle(
              fontFamily: 'MarckScript',
              fontSize:40,
              fontWeight:FontWeight.bold,
            ),            
          ),
          Image.asset('assets/images/logo01.png'), 
          TextButton(
            child:Text('Start',
                style:TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                ),
              ),
              onPressed:(){}
            ),
        ]
      ),
    
      
    );
  }

}