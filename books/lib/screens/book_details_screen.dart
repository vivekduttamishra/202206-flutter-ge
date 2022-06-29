// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/book_details.dart';
import '../components/book_reviews.dart';
import '../components/book_summary.dart';
import '../const.dart';
import '../services/book.dart';
import 'book_list_screen.dart';

class BookDetailsScreen extends StatelessWidget {
   static const routeName="/book/details";
  //dynamic book ;
  
  BookDetailsScreen( {Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    var book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
        appBar: AppBar(title: Text(book.title), actions: [
          TextButton(
            child: Icon(Icons.list, color: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
               //Navigator.of(context).pop()
              Navigator.popUntil(context, ModalRoute.withName(BookListScreen.routeName));
            },
          )
        ]),
        body: BookDetails(book),
        //floatingActionButton:FloatingActionButton(onPressed: (){},),
    );
  }
}

