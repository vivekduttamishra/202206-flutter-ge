import 'package:flutter/material.dart';
import 'package:hello/components/counter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

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
            onPressed: resetCounter,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: decrementCounter,
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
        // padding: const EdgeInsets.symmetric(
        //   horizontal: 20,
        //   vertical: 40,
        // ),
        color: Colors.yellow.shade300,
        child: Counter(counter),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
