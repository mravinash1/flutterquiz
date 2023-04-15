import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> question;
  Function questionAnswer;
  int questionIndex;

  Quiz(this.question, this.questionAnswer, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(question[questionIndex]['question']),
      ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => questionAnswer(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}



