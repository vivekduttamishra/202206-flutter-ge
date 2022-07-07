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
                //Same as the given back button. pops() the top page
               //Navigator.of(context).pop()

               //Adds a a new List Page on the top of current stack.
               //Back will bring me back to this screen 
                //Navigator.pushNamed(context, BookListScreen.routeName);
              
              //Keep going back till you reach ListPage
              Navigator.popUntil(context, ModalRoute.withName(BookListScreen.routeName));

            },
          )
        ]),
        body: BookDetails(book),
        //floatingActionButton:FloatingActionButton(onPressed: (){},),
    );
  }
}

