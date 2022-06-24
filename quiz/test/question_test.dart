

import 'package:flutter_test/flutter_test.dart';
import 'package:quiz/services/question.dart';

void main(){
  Question? question;
  setUp((){
    question=Question('question',['answer1','answer2','answer3','answer4'],1);

  });
  test('a question by default is not answered',(){
    
    expect(question?.isAnswered,false);
  });

   test('a question by default is not correctly answered',(){
    

    expect(question?.isCorrectAnswer,false);
  });

  test('should be considered answered for index !=0',(){
    question?.givenAnswerIndex=1;

    expect(question?.isAnswered,true);
  });

  test('wrong answer should be identified',(){
    question?.givenAnswerIndex=4;

    expect(question?.isCorrectAnswer,false);
  });

 test('correct answer should be identified',(){
    question?.givenAnswerIndex=1;
    expect(question?.isCorrectAnswer,true);
  });

   test('correctAnswerText should return correct answer',(){
    Question q= question!;

    expect(q.correctAnswer,q.answers[q.correctAnswerIndex]);
  });

  test('givenAnswer should return given answer text if answer is given',(){
    Question q= question!;
    q.givenAnswerIndex=1;
    expect(q.givenAnswer,q.answers[1]);
  });

  test('givenAnswer should return null text if answer is not given',(){
    Question q= question!;

    expect(q.givenAnswer,null);
  });
}