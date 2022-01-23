import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, dynamic>> questions;

  Quiz({
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionTitle: questions[questionIndex]['questionTitle'],
        ),
        ...(questions[questionIndex]['answers'] as List<Object>)
            .map((answer) => Answer(answerQuestion, answer))
            .toList()
      ],
    );
  }
}
