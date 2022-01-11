import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _onPressAnswerQuestionButton() {
    setState(() {
      _questionIndex = 1;
    });
    print('Pressed 1 answer!');
  }

  void _onPressAnswerQuestionButton2() {
    setState(() {
      _questionIndex = 0;
    });
    print('Pressed 2 answer!');
  }

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
            Question(
              questionTitle: questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _onPressAnswerQuestionButton,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _onPressAnswerQuestionButton2,
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
