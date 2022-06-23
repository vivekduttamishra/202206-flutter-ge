import 'package:flutter/material.dart';
import 'package:hello/screens/counter_screen.dart';

class HomeScreen extends StatelessWidget {
  int counter = 10;
  HomeScreen({Key? key}) : super(key: key);

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
          TextButton(
            onPressed: () {
              print('Item reset');
            },
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              print('Item removed');
            },
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // margin: const EdgeInsets.all(
        //   20,
        // ),
        //   padding: const EdgeInsets.all(
        //     20,
        //   ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        color: Colors.yellow.shade300,
        child: Align(
          alignment: Alignment.center,
          child: Center(
            // child: Text(
            //   counter.toString(),
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //     fontSize: 100,
            //     fontFamily: 'Courier',
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            child: CounterScreen(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print('Button Pressed $counter');
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
