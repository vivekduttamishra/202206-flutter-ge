// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../components/book_info_line.dart';
import '../services/BookManager.dart';
import '../services/BookSeeder.dart';

class BookListScreen extends StatelessWidget {
  final BookManager bookManager = BookManager();

  BookListScreen({Key? key}) : super(key: key) {
    seedBooks(bookManager);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor:Colors.black,
          title: Text('Books'),
          actions: [
            TextButton(
              child: Icon(
                Icons.add,
                // color:Colors.white,
              ),
              onPressed: () {},
            )
          ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Total Books: ${bookManager.getAllBooks().length}',
            ),
            Expanded(
              child: ListView(
                children: bookManager
                    .getAllBooks()
                    .map((b) => BookInfoLine(b))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
