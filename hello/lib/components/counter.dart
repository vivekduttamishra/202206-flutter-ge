import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int value;
  const Counter(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Card(
        color: Colors.yellow,
        elevation: 10,
        shadowColor: Colors.red,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: 200,
          child: Text(
            value.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 100,
              fontFamily: 'Courier',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
