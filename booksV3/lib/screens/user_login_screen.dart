// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, overridden_fields
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/utils.dart';
import '../utils/validators.dart';

class UserLoginScreen extends StatefulWidget {
  static const routeName = "/user/login";
  UserLoginScreen({Key? key}) : super(key: key);

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> with Validators {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sign In'), actions: [
          InkWell(
            child: Icon(
              Icons.save_alt,
            ),
            onTap: () {
              if (_formKey.currentState!.validate()) {
                toast(context, 'Book Saved');
                _formKey.currentState!.save();
                print('book saved');
              } else {
                toast(context, 'Validation Errors',
                    backgroundColor: Theme.of(context).colorScheme.error);
              }
            },
          ),
        ]),
        body: Form(
          key: _formKey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.contact_mail),
                    hintText: 'Account Email',
                  ),
                  validator: validate([isRequired(), isEmail()]),
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'password',
                  ),
                  validator: validate([isRequired(), stringLength(5, 10)]),
                  obscureText: true,
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  onSaved: (value) {
                    print('password saved is $value');
                  },
                ),
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
                        Icon(Icons.login),
                        Text('Sign In'),
                      ]),
                      onPressed: () {
                          var valid=_formKey.currentState?.validate();
                          if(valid!){
                            _formKey.currentState?.save();
                          } 
                          

                      },
                    ),
                    SizedBox(width: 10,),
                    
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
