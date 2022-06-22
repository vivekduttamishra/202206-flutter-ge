// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(          //provides necessary values for Material Guideline
      home: Scaffold(     //Scaffold provide visuals for an entire screen
        appBar: AppBar(   //starts with an app bar
            title: Text("Hello Flutter!"),
            leading: Icon(Icons.sports_handball, size:32,),
            actions: [
              OutlinedButton(onPressed: (){
                print('New item added');
              }, 
              child: Icon(Icons.add_circle_outline, color:Colors.white,), 
              
              ),
              OutlinedButton(onPressed: (){
                print('Item Removed');
              }, 
              child: Icon(Icons.remove_circle_outline, color:Colors.white,), 
              
              ),
            ],
        ), 
        body: Container(
          //margin: EdgeInsets.all(20,),
          height:double.infinity,
          width: double.infinity, //as much as you can get,
          padding:EdgeInsets.symmetric(horizontal: 20,vertical:40,),
          color:Colors.yellow.shade300,
          child: Text(
            'Welcome to Flutter App Development',
           
          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){print('Button Pressed');},
          child: Icon(Icons.question_mark),
        ),
      ),
    ),
  );
}
