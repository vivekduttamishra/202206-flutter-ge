

// ignore_for_file: curly_braces_in_flow_control_structures

import 'question.dart';

class Quiz{
  final List<Question> questionBank;
  late List<Question> quizQuestions;
  int currentQuestionIndex=1;
  int totalQuestionAnswered=0;
  int totalCorrectAnswers=0;
  get totalQuestions=> quizQuestions.length;

  Quiz(this.questionBank);

  start({int totalQuestions=5}){
    questionBank.shuffle();
    quizQuestions=questionBank.take(totalQuestions).toList();
    currentQuestionIndex=1;
    totalQuestionAnswered=0;
    totalCorrectAnswers=0;
    for(var q in quizQuestions) 
      q.givenAnswerIndex=-1; //reset all quiz question
  }

  Question get currentQuestion => quizQuestions[currentQuestionIndex-1];

  respond(int givenAnswerIndex){
    if(!currentQuestion.isAnswered){
      currentQuestion.givenAnswerIndex=givenAnswerIndex;
      totalQuestionAnswered++;
      if(currentQuestion.isCorrectAnswer)
        totalCorrectAnswers++;

      return true; //response accepted. It may not be correct
    } else {
      return false; //reponse rejected because question is already answered
    }
  }

  next(){
    if(currentQuestionIndex<totalQuestions){
      currentQuestionIndex++;
    }
  }

  previous(){
    if(currentQuestionIndex>1){
      currentQuestionIndex--;
    }
  }

  select(index){
    if(index>0 && index<=totalQuestions)
      currentQuestionIndex=index;
  }

  get quizOver=> totalQuestions==totalQuestionAnswered;
}