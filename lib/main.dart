import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      if (_questionIndex < 2) {
        _questionIndex += 1;
      }
    });
  }

  Widget build(BuildContext context) {
    const List<Map<String, Object>> questions = const [
      {
        'questionTitle': 'What\'s your favourite color?',
        'answers': ['Green', 'Red', 'Orange', 'Violet'],
      },
      {
        'questionTitle': 'Who is your favourite actor',
        'answers': ['RDJ', 'Caprio', 'C. Bale', 'T. Holland'],
      },
      {
        'questionTitle': 'Who is your favourite artist',
        'answers': ['Lil. NasX', 'Akon', 'Skrillex', 'Sickick'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basics'),
        ),
        body: Column(
          children: [
            Question(
              questionTitle: questions[_questionIndex]['questionTitle'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_onPressAnswerQuestionButton, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
