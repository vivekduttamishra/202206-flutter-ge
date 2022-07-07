// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/book_details.dart';
import '../components/book_reviews.dart';
import '../components/book_summary.dart';
import '../const.dart';
import '../services/book.dart';

class BookDetailsScreen extends StatelessWidget {
  dynamic book ;
  
  BookDetailsScreen( this.book, {Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(book.title), actions: [
          TextButton(
            child: Icon(Icons.list, color: Theme.of(context).colorScheme.onPrimary),
            onPressed: () {
               
            },
          )
        ]),
        body: BookDetails(book),
        floatingActionButton:FloatingActionButton(onPressed: (){},),
    );
  }
}

