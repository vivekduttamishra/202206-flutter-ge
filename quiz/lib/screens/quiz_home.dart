import 'package:flutter/material.dart';
import 'package:quiz/components/quiz_title.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold provides visuals for entire screen
    return Scaffold(
      // starts with appbar
      appBar: AppBar(
        title: const Text('Quiz App'),
        leading: const Icon(
          Icons.edit_note_sharp,
          size: 32,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        color: Color.fromARGB(255, 181, 209, 238),
        child: const QuizTitle(),
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
