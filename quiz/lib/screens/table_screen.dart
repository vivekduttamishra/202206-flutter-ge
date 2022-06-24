// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget{
  const TableScreen({Key? key}) : super(key: key);

  getItems(){
    var titles=['The Accursed God','Rashmirathi', 'Kurukshetra','Kane and Abel','The Count of Monte Cristo'];

    List<Widget> rows=[];
    var random=Random();

    var header=Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text('Title',),
          Text('Price'), 
          Text('Rating'),
        ],
    );

    rows.add(header);
    rows.add(Divider(thickness:2));

    for(var title in titles){
      var price=(random.nextInt(41)+10)*10; 
      var rating= (random.nextInt(9)+2)*0.5; 

      var row=Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text(title,),
          Text('Rs $price'), 
          Text(' $rating / 5'),
        ],
      );
      
      rows.add(row);

      
    }
    return rows;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Container(
        color: Colors.yellow,
        padding:EdgeInsets.all(20),
        width:double.infinity,
        height:double.infinity,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,

          children:[
            Column(
              crossAxisAlignment:CrossAxisAlignment.stretch,

              children: getItems(),
            ),
            
          ],

        ),
      ),
    );
  }

}