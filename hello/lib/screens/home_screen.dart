import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold provides visuals for entire screen
    return Scaffold(
      // starts with appbar
      appBar: AppBar(
        title: const Text('Hello Flutter'),
        leading: const Icon(
          Icons.sports_handball,
          size: 32,
        ),
        actions: [
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton 1 Pressed');
            },
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton 2 Pressed');
            },
            child: const Icon(
              Icons.remove_circle_outline,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        margin: const EdgeInsets.all(
          20,
        ),
        //   padding: const EdgeInsets.all(
        //     20,
        //   ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        color: Colors.yellow.shade300,
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            'Welcome to Flutter App Development!',
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button Pressed');
        },
        child: const Icon(
          Icons.question_mark,
        ),
      ),
    );
  }
}
