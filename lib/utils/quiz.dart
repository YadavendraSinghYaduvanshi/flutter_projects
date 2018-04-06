import 'package:flutter_projects/utils/question.dart';

class Quiz{

  List<Questions> _questions;
  int _currentQuestionIndex=-1;
  int _score=0;

  Quiz(this._questions){
    _questions.shuffle();
  }

  List<Questions> get question =>_questions;
  int get score =>_score;
  int get length =>_questions.length;
  int get questionNumber =>questionNumber+1;

  Questions get nextQuestion{
    _currentQuestionIndex++;
    if(_currentQuestionIndex>=length)
      return null;
    return _questions[_currentQuestionIndex];
  }

  void answer(bool isCorrect){
    if(isCorrect) _score++;
  }
}