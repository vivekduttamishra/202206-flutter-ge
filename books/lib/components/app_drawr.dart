


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screens/book_list_screen.dart';
import '../screens/user_login_screen.dart';
import '../screens/user_register_screen.dart';
import '../services/user_manager.dart';
import 'drawer_button.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final UserManager userManager=UserManager();

  dynamic user;

  @override
  Widget build(BuildContext context) {

    return     Drawer(

        child: SafeArea(
          child: Container(
            padding:EdgeInsets.all(10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text( user!=null? 'Welcome ${user["name"]}':'Welcome Guest', style:Theme.of(context).textTheme.titleLarge),
              Divider(),
              DrawerButton(
                icon: Icons.book,
                text: 'Books',
                onTap:(){
                    Navigator.of(context).pushNamed(BookListScreen.routeName);
                },
              ),

              Divider(),
              SizedBox(height:10),
              if(user==null)
                DrawerButton(
                  icon: Icons.login,
                  text: 'Login',
                  onTap:(){
                      Navigator.of(context).pushNamed(UserLoginScreen.routeName,);
                  },
                ),

              if(user==null)
                DrawerButton(
                  icon: Icons.person_add,
                  text: 'Register',
                  onTap:(){
                    Navigator.of(context).pushNamed(UserRegisterScreen.routeName);
                  },
                ),


              if(user!=null)
                  DrawerButton(
                    icon: Icons.logout,
                    text: 'Logout',
                    onTap:(){
                      setState((){
                          userManager.logout();
                      });
                      
                    },
                  )
              

            ],
              ),
          ),
        )

      );
  }
}