
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../services/user_manager.dart';

class DrawerButton extends StatelessWidget {
  
  final IconData icon;
  final String text;
  final dynamic onTap;
  DrawerButton({required this.icon, required this.text, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: onTap ,
      child: Container(
        margin:EdgeInsets.only(bottom: 10),
        child: Row(
          
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(icon),
            SizedBox(width:5),
            Text(text),
          ]
        ),
      )
    );

  }
}