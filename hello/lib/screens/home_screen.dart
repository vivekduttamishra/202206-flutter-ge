
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import '../components/counter.dart';

class HomeScreen extends StatefulWidget{


  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
          child: Scaffold(     //Scaffold provide visuals for an entire screen
          appBar: AppBar(   //starts with an app bar
              title: Text("Hello Flutter!"),
              leading: Icon(Icons.sports_handball, size:32,),
              actions: [
                TextButton(onPressed: (){
                  print('Counter Reset');
                  setState(() {
                    counter=0;
                  });
                }, 
                child: Icon(Icons.refresh, color:Colors.white,), 
                
                ),
              
                TextButton(onPressed: (){
                  print('Item decremented');
                  setState(() {
                    counter--;
                  });
                }, 
                child: Icon(Icons.remove, color:Colors.white,), 
                
                ),
              ],
          ), 
          body: Container(
            //margin: EdgeInsets.all(20,),
            height:double.infinity,
            width: double.infinity, //as much as you can get,
            padding:EdgeInsets.symmetric(horizontal: 20,vertical:40,),
            color:Colors.yellow.shade300,
            child: Counter(counter),

          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              setState(() {
                counter++;  
              });
              
              print('Incrementing The counter to $counter');
            },
            child: Icon(Icons.add),
          ),
        ),
    );
  }
}