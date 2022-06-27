// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz/services/quiz.dart';

import '../components/answer_button.dart';
import '../const.dart';
import '../services/question.dart';

class QuizScreen extends StatefulWidget {
  final Quiz quiz;
  final Function navigate;
  const QuizScreen(this.quiz, this. navigate, {Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  //Question? _currentQuestion;

  // Question get currentQuestion=>_currentQuestion ?? widget.quiz.currentQuestion;
  // set currentQuestion(value)=> _currentQuestion=value;

  submitAnswer(answerIndex){
    setState((){
      widget.quiz.respond(answerIndex);
      var q= widget.quiz.currentQuestion;
      while(true){
        widget.quiz.next();
        if(!widget.quiz.currentQuestion.isAnswered|| widget.quiz.currentQuestionIndex==widget.quiz.totalQuestions)
          break;
      }
    });
  }


  getAnswerButtons(Question question){

    List<Widget> buttons=[];
    for(int i=0;i<question.answers.length;i++){
      var button=AnswerButton(question, i,onSelect:submitAnswer);
      buttons.add(button);
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    //print('updating ui ${widget.quiz.currentQuestion.isAnswered}');
    //print(quiz.question.question);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.question_mark),
        title: Text('Quizzy'),
        actions: [
          TextButton(
            onPressed: () {widget.navigate("result");},
            child: Icon(
              Icons.summarize,
              color: Colors.white,
            ),
          ),
          TextButton(
            child:Icon(
              Icons.home, 
              color: Colors.white,),
            onPressed:(){widget.navigate('home');},
          ),
        ],
      ),
      body: Container(
        color: appBodyColor(),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(12.0),
        child: Column(
          
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              
              
              children: [
                Text(
                  widget.quiz.currentQuestion.question,
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
               
                children: getAnswerButtons(widget.quiz.currentQuestion),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    
                    setState((){
                        widget.quiz.previous();
                    });
                    print('next question ${widget.quiz.currentQuestion.question}');
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Text('${widget.quiz.currentQuestionIndex} of ${widget.quiz.totalQuestions}'),
                TextButton(
                  onPressed: () {
                    
                    setState((){
                        widget.quiz.next();
                    });
                  },
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
