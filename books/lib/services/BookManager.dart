// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

import 'book.dart';
import 'package:http/http.dart' ;

import 'user_manager.dart';

class BookManager{

  static const baseURL='http://ca-booksapi.herokuapp.com/api';
  final userManager= UserManager();
  
  Future<List<Book>> getAllBooks() async{

    //fetch the data from the network
    var uri= Uri.parse('$baseURL/books');

    var response= await get(uri);

    var data=jsonDecode(response.body);

    var books= data.map<Book>( (m)=> Book.fromMap(m)).toList();

    return books;
    
  }

  Future<Book> getBookById(String id) async{
    
      var response=await get(Uri.parse('$baseURL/books/$id'));
      if(response.statusCode == 200){
        //Ah! I got the book
        return Book.fromMap(jsonDecode(response.body));
      } else if(response.statusCode == 404){
          throw Exception('No Book with isbn $id in our record');
      } else{
        throw Exception('Unknown eror ${response.statusCode}');
      }

  }

  addBook( book) async{

    var user=userManager.getUser();
    book['author']=book['authorId'];
    var headers=<String,String>{
      "content-type": "application/json",
      "accept": "application/json",
    };

    if(user!=null)
      headers['authorization']='BEARER ${user["token"]}';

    print('headers: $headers');

    var body=jsonEncode(book);

    var uri = Uri.parse('$baseURL/books'); 

    var response = await post(uri, body: body, headers:headers);
    print('response ${response.body}');
    return response.statusCode;

  }

}