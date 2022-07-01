

// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../services/question.dart';
// ignore_for_file: prefer_const_constructors

class QuestionInfo extends StatelessWidget{

  final Question question;
  const QuestionInfo(this.question,{Key? key}) : super(key: key);

  getCorrectAnswerText(){
    if(question.isCorrectAnswer)
      return 'You correctly answered: ${question.correctAnswer}';
    else 
      return 'Correct answer is: ${question.correctAnswer}';
  }

  getIncorrectAnswerText(){
    if(question.isCorrectAnswer)
      return '';
    else if(question.isAnswered)
      return 'You answer was : ${question.givenAnswer}';
    else
      return "You didn't answer";
  }

  @override
  Widget build(BuildContext context) {
    return Card(
              color:Colors.lime,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:[
                    Text(
                      question.question, 
                      
                      style:TextStyle(
                        fontSize:20,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      getCorrectAnswerText(), 
                      style:TextStyle(
                        fontSize:15,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    SizedBox(height:10),
                    Text(
                      getIncorrectAnswerText(), 
                      style:TextStyle(
                        fontSize:15,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ]
                ),
              ),
           );
  }

}