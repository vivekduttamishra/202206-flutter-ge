// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../components/app_drawr.dart';
import '../components/book_info_line.dart';
import '../components/utils.dart';
import '../services/BookManager.dart';
import '../services/BookSeeder.dart';
import '../services/book.dart';
import 'book_add_screen.dart';
import 'book_details_screen.dart';
import 'user_login_screen.dart';

class BookListScreen extends StatefulWidget {
  static const routeName = "/book/list";
  final BookManager bookManager = BookManager();

  BookListScreen({Key? key}) : super(key: key) {
    seedBooks(bookManager);
  }

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> books = [];
  bool dataFetched=false;

  @override
  void initState() {
    super.initState();

    widget.bookManager.getAllBooks()
    //it will take time to get the book. UI will be rendered early with book=null
    .then((b) {
      setState(() {
        books = b;
        dataFetched=true;
      });
    });
  }




  @override
  Widget build(BuildContext context) {

    //first called with books=null
    //then once http request is success is called again with data

    return Scaffold(
      appBar: AppBar(
          //backgroundColor:Colors.black,
          title: Text('Books'),
          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.add,
                ),
              ),
              onTap: () {
                //toast(context,'Adding New Book');
                Navigator.of(context).pushNamed(
                  BookAddScreen.routeName,
                );
              },
            )
          ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: !dataFetched
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Text(
                    'Total Books: ${books.length}',
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: books.length,
                      itemBuilder: (ctx, index) {
                        var b = books[index];
                        return GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context)=> BookDetailsScreen(b)
                              //     ),
                              //   );

                              Navigator.of(context).pushNamed(
                                  BookDetailsScreen.routeName,
                                  arguments: b.isbn);
                            },
                            child: BookInfoLine(b));
                      },
                    ),
                  ),
                ],
              ),
      ),
    
      drawer: AppDrawer(),
    
    );
  }
}
