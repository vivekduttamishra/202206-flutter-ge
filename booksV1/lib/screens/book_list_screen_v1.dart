// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

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
            Text('Total Books: ${bookManager.getAllBooks().length}',),
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: bookManager.getAllBooks().map((b) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      padding:EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color:Theme.of(context).colorScheme.secondary,
                           
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        b.title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    );
                  }).toList()),
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
