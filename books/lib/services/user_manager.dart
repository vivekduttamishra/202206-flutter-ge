import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:localstorage/localstorage.dart';

import 'user.dart';

class UserManager {
  static final LocalStorage storage = LocalStorage('book');

  static const baseURL = 'http://ca-booksapi.herokuapp.com/api';

  login(Map<String, dynamic> userInfo) async {
    var uri = Uri.parse('http://ca-booksapi.herokuapp.com/api/users/login');

    var json = jsonEncode(userInfo);

    var response = await http.post(
      uri,
      body: json,
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
      },
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 201) {
      ///var user=User.fromMap(data);

      await storage.setItem('users', data);

      return null; //success

    } else {
      return data['message'];
    }
  }

  logout() async {
    await storage.deleteItem('users');
  }

  getUser() {

    var data = storage.getItem('users');
    print(data);
    return data;

  }





}
