import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 100,
        fontFamily: 'Courier',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
