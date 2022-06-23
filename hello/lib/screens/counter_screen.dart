
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count=0;

  @override
  Widget build(BuildContext context) {
    
    return Text(count.toString());
  }
}