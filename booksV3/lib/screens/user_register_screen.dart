// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../utils/validators.dart';

class UserRegisterScreen extends StatefulWidget {
  static const routeName = "/user/register";
  UserRegisterScreen({Key? key}) : super(key: key);

  @override
  State<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends State<UserRegisterScreen> with Validators {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sign In'), actions: [
          InkWell(
            child: Icon(
              Icons.person_add,
            ),
            onTap: () {
             
            },
          ),
        ]),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height:20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(''),
                  ),
                  SizedBox(width:10),
                  ElevatedButton(
                    child: Row(children: [
                      Icon(Icons.person_add),
                      Text('Register'),
                    ]),
                    onPressed: () {
                        
                    },
                  ),
                  SizedBox(width: 10,),
                  
                ],
              ),
            ],
          ),
        ));
  }
}
