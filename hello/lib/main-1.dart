import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const SafeArea(
      child: Text(
        'Hello World',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 165, 165, 18),
        ),
      ),
    ),
  );
}
