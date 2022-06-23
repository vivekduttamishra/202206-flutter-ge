import 'package:flutter/material.dart';
import 'package:quiz/components/quiz_title.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({Key? key}) : super(key: key);

  void sumbitQuiz() {
    print('Quiz submitted');
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold provides visuals for entire screen
    return Scaffold(
      // starts with appbar
      appBar: AppBar(
        title: const Text('Quizzy'),
        leading: const Icon(
          Icons.edit_note_sharp,
          size: 32,
        ),
        actions: [
          TextButton(
            onPressed: sumbitQuiz,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
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
    );
  }
}
