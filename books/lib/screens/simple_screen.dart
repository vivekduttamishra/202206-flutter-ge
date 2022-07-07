
import 'package:flutter/material.dart';

class SimpleScreen extends StatelessWidget {
  final String title;
  final Widget child;
  const SimpleScreen({required this.child, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( title: Text(title),),
      body: child,
    );

  }
}