
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final Function navigate;
  const WelcomeScreen(this. navigate, {Key? key}) : super(key: key);

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
          ElevatedButton(
            child:Text('Start',
                style:TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                ),
              ),
              onPressed:(){
                navigate('list');
              }
            ),
        ]
      ),
    
      
    );
  }

}