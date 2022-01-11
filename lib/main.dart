import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void onPressAnswerQuestionButton() {
    print('Pressed 1 answer!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite movie?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basics'),
        ),
        body: Column(
          children: [
            Text(
              questions[1],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: onPressAnswerQuestionButton,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Pressed 2 answer!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Pressed 3 answer!'),
            ),
          ],
        ),
      ),
    );
  }
}
