
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'const.dart';
import 'screens/book_list_screen.dart';
//import 'screens/welcome_screen.dart';

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BookListScreen(),
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor:primaryColor,
          canvasColor:Color(0xFFFA824C),
          

          appBarTheme: AppBarTheme(
            backgroundColor:primaryColor,
            foregroundColor:primaryContrastColor,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor:primaryColor,
            foregroundColor:primaryContrastColor,
          ),

          textTheme: ThemeData.light().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize:24,
              fontFamily:'Handlee',
              fontWeight:FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize:22,
              fontFamily:'Handlee',
              fontWeight:FontWeight.bold,
            ),
            titleSmall: TextStyle(
              fontSize:20,
              fontFamily:'Handlee',
              fontWeight:FontWeight.bold,
            ),
            bodyLarge: TextStyle(
              fontSize:18,
              fontFamily:'BadScript',
              
            ),
            bodyMedium: TextStyle(
              fontSize:20,
              fontFamily:'Oswald',
              
            ),
            bodySmall: TextStyle(
              fontSize:14,
              fontFamily:'BadScript',
              
            )
          ),
        ),
    );
  }

}