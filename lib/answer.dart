import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectAnswer;
  final dynamic answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ButtonStyle(),
        child: Text(answerText['text']),
        onPressed: () => selectAnswer(answerText['score']),
      ),
    );
  }
}
