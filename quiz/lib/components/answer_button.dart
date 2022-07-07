// ignore_for_file: prefer_const_constructors
// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';

import '../const.dart';
import '../services/question.dart';

class AnswerButton extends StatelessWidget{
  final Question question;
  final int currentAnswerIndex;
  final Function? onSelect;

  const AnswerButton(this.question,this.currentAnswerIndex,{Key? key,required this.onSelect}) : super(key: key);

  get backgroundColor{

    if(!question.isAnswered)
      return Colors.transparent;

    if(question.correctAnswerIndex==currentAnswerIndex && question.isCorrectAnswer)
      return Colors.lime;

    if (!question.isCorrectAnswer && question.givenAnswerIndex==currentAnswerIndex)
      return Colors.redAccent.shade100;

    return Colors.transparent;

  }

 

  @override
  Widget build(BuildContext context) {
    
    handleSelect(){
      onSelect!(currentAnswerIndex);
    }

   
    return OutlinedButton(
                    onPressed: question.isAnswered||onSelect==null? null: handleSelect,
                    
                    style: OutlinedButton.styleFrom(
                      backgroundColor:backgroundColor,
                    ),
                   
                    child: Text(
                      question.answers[currentAnswerIndex],
                      style: answerStyle,
                      textAlign: TextAlign.left,
                    ),
                    
                  );
  }

}