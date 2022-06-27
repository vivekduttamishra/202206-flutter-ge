
import 'package:flutter/material.dart';

import '../components/question_info.dart';
import '../const.dart';
import '../services/quiz.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables



class ResultScreen extends StatelessWidget{

  final Quiz quiz;
  final Function navigate;

  const ResultScreen(this.quiz, this.navigate,{Key? key}) : super(key: key);

  getInfoLine(label, value,{bold=false}){
    return Row(
              children: [
                Expanded(
                  flex:7,
                  child: Text(label, 
                      style:TextStyle(
                        fontSize:18,
                        fontWeight: bold? FontWeight.bold:FontWeight.normal,
                      ),
                  ),
                ),
                Expanded(
                  flex:3,
                  child: Text(value.toString(),
                  style:TextStyle(
                        fontSize:18,
                        fontWeight: bold? FontWeight.bold:FontWeight.normal,
                      ),
                  ),
                ),
              ],
            );
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.summarize),
        title:Text('Result'),
        actions:[
          TextButton(
            child:Icon(
              Icons.rate_review,
              color: Colors.white,
              ),
            onPressed:(){navigate('quiz');},
          ),
          TextButton(
            child:Icon(
              Icons.home, 
              color: Colors.white,),
            onPressed:(){navigate('home');},
          ),
        ]
      ),
      
      body:Container(
        width:double.infinity,
        height:double.infinity,
        color:appBodyColor(),
        padding:EdgeInsets.all(10),

        child: Column(
          
          children: [
            Text('Summary', 
                style:TextStyle(
                    fontSize:30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Amatic',
                ),

            ),
            Divider(color:Colors.red.shade300,),
            getInfoLine('Total Questions',quiz.totalQuestions),
            getInfoLine('Total Answered', quiz.totalQuestionAnswered),
            getInfoLine('Correct Answers',quiz.totalCorrectAnswers,bold:true),
            SizedBox(height:20,),
            Text('Details', 
                style:TextStyle(
                    fontSize:30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Amatic',
                ),

            ),
            
            Divider(color:Colors.red.shade300,),
            
            Container(
              height:450,
              child: SingleChildScrollView(
                
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.stretch,
                  children: quiz
                              .quizQuestions
                              .map( (q) => QuestionInfo(q))
                              .toList(),

                ),
              ),
            )

          ],
        ),
      ),
    );
  }


}