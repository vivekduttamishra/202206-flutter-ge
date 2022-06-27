
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        //backgroundColor:Colors.black,
        title:Text('Books'),
        actions:[
          TextButton(
            child:Icon(Icons.add, 
           // color:Colors.white,
           ),
            onPressed:(){
              
            },
          )
        ]
      ),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        padding:EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
            Text(
              'Books',
              style : Theme.of(context).textTheme.titleLarge, 
            ),
            Text('This is some basic information about the current book'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:Icon(Icons.add),
      ),
    );
  }

}