// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../services/BookManager.dart';
import '../utils/validators.dart';

class BookAddScreen extends StatefulWidget {
  static const routeName = "/book/add";
  final BookManager bookManager = BookManager();

  BookAddScreen({Key? key}) : super(key: key);

  @override
  State<BookAddScreen> createState() => _BookAddScreenState();
}

class _BookAddScreenState extends State<BookAddScreen> with Validators {
  final bookForm = GlobalKey<FormState>();

  Map<String, dynamic> bookInfo = Map<String, dynamic>();


  save(String key) {
    void f(String? value) {
      bookInfo[key] = value;
    }

    return f;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Book'), actions: [
        InkWell(
          child: Icon(
            Icons.save_alt,
          ),
          onTap: () {
            if (bookForm.currentState!.validate()) {
              toast(context, 'Book Saving...');
              bookForm.currentState!.save();
              print('book saved');
              //print(bookInfo);

              widget.bookManager.addBook(bookInfo).then((statusCode) {
                if (statusCode == 401) {
                  toast(context, 'Unauthorized. Login First',
                      backgroundColor: Theme.of(context).colorScheme.error);
                } else if (statusCode == 201) {
                  toast(context, 'Book Saved Successfully');
                }
                print('statusCode $statusCode');
              });
            } else {
              toast(context, 'Validation Errors',
                  backgroundColor: Theme.of(context).colorScheme.error);
            }
          },
        ),
      ]),
      body: Form(
        key: bookForm,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Id'),
                  ),
                  validator: validate([isRequired(), stringLength(2, 10)]),
                  onSaved: save('id'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Title'),
                  ),
                  validator: validate([
                    isRequired(errorMessage: 'Book Title is Required'),
                    stringLength(2, 100)
                  ]),
                  onSaved: save('title'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Author Id'),
                  ),
                  validator: validate([isRequired()]),
                  onSaved: save('authorId'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book ISBN'),
                  ),
                  validator: validate([isRequired()]),
                  onSaved: save('isbn'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Price'),
                  ),
                  keyboardType: TextInputType.number,
                  validator: validate(
                      [isRequired(), isNumber(), isInInclusiveRange(0, 5000)]),
                  onSaved: save('price'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Rating'),
                  ),
                  keyboardType: TextInputType.number,
                  validator: validate(
                      [isRequired(), isNumber(), isInInclusiveRange(1, 5)]),
                  onSaved: save('rating'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Cover'),
                  ),
                  validator: validate([isRequired()]),
                  onSaved: save('cover'),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Book Descriptions'),
                  ),
                  validator: validate([isRequired()]),
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  onSaved: save('description'),
                ),
              ],
            ),
          ),
        ),
      ),
      //resizeToAvoidBottomInset: true,
    );
  }
}
