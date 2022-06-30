// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/book_details.dart';
import '../components/book_reviews.dart';
import '../components/book_summary.dart';
import '../const.dart';
import '../services/book.dart';
import 'book_details_screen.dart';

class BookSummaryScreen extends StatelessWidget {
   static const routeName="/book/summary";
  //dynamic book ;
  
  BookSummaryScreen( {Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    var book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
        appBar: AppBar(title: Text(book.title), actions: [
          TextButton(
            child: Icon(Icons.library_books, color: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
               Navigator.of(context).pushNamed(BookDetailsScreen.routeName, arguments:book);
            },
          )
        ]),
        body: BookSummary(book),
        //floatingActionButton:FloatingActionButton(onPressed: (){},),
    );
  }
}

