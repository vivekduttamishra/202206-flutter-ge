
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Blank Screen'),
        actions:[
          TextButton(
            child:Icon(Icons.add, 
            color:Colors.white),
            onPressed:(){
              
            },
          )
        ]
      ),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        padding:EdgeInsets.all(10),
        child: Text('Blank Screen'),
      )
    );
  }

}