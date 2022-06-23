// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Counter extends StatelessWidget{

  final int value;

  const Counter(this.value,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Card(
                // ignore: sort_child_properties_last
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width:200,
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      fontSize:100,
                      fontFamily: 'Courier',
                      fontWeight:FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: Colors.yellow.shade600,
                elevation: 10,
                shadowColor: Colors.red,
              ),
            );
  }

}