import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTitle;

  Question({this.questionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(8),
      child: Text(
        questionTitle,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
