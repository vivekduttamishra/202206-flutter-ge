// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../components/book_info_line.dart';
import '../services/BookManager.dart';
import '../services/BookSeeder.dart';

class BookListScreen extends StatelessWidget {
  final BookManager bookManager = BookManager();
  Function navigate;
  BookListScreen(this.navigate, {Key? key}) : super(key: key) {
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
                Icons.info_outline,
                 color:Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {
                navigate('details');
              },
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
              child: ListView.builder(
                    itemCount: bookManager.getAllBooks().length,
                    itemBuilder: (ctx, index){
                      var b = bookManager.getAllBooks()[index];
                      return GestureDetector(
                              onTap: (){
                                print('tapped ${b.id}');
                                navigate(
                                  'details', 
                                  parameter:b
                                );
                              },
                              child: BookInfoLine(b)
                            );
                    },
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
