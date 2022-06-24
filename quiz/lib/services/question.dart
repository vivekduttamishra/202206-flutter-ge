
class Question{

  final String question;
  final List<String> answers;
  final int correctAnswerIndex;
  late int givenAnswerIndex=-1;

  Question(this.question, this.answers, this.correctAnswerIndex);

  get isAnswered => givenAnswerIndex!=-1;
  
  get isCorrectAnswer => correctAnswerIndex==givenAnswerIndex;

  get correctAnswer => answers[correctAnswerIndex];

  get givenAnswer => givenAnswerIndex<0 || givenAnswerIndex>=answers.length?null:answers[givenAnswerIndex];

}