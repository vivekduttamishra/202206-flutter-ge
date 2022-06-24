// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.question_mark),
        title: Text('Quizzy'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Who first called Mahatma Gandhi as the father of the nation?",
                  style: questionStyle,
                ),
                Divider(
                  // color:Colors.black,
                  thickness: 2,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text(
                      'Jawahar Lal Nehru',
                      style: answerStyle,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Sardar Patel',
                      style: answerStyle,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Subhash Chandra Bose',
                      style: answerStyle,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Dr Rajendra Prasad',
                      style: answerStyle,
                    ),
                  ),
                ],
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_back),
                ),
                Text('2 of 5'),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
