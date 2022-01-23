import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _onAnswerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    const List<Map<String, Object>> _questions = const [
      {
        'questionTitle': 'What\'s your favourite color?',
        'answers': [
          {
            'text': 'Green',
            'score': 80,
          },
          {
            'text': 'Red',
            'score': 20,
          },
          {
            'text': 'Orange',
            'score': 50,
          },
          {
            'text': 'Violet',
            'score': 70,
          },
        ],
      },
      {
        'questionTitle': 'Who is your favourite actor',
        'answers': [
          {
            'text': 'RDJ',
            'score': 90,
          },
          {
            'text': 'Caprio',
            'score': 80,
          },
          {
            'text': 'C. Bale',
            'score': 70,
          },
          {
            'text': 'Tom Holland',
            'score': 70,
          },
        ],
      },
      {
        'questionTitle': 'Who is your favourite artist',
        'answers': [
          {
            'text': 'Lil. NasX',
            'score': 70,
          },
          {
            'text': 'Akon',
            'score': 50,
          },
          {
            'text': 'Skrillex',
            'score': 80,
          },
          {
            'text': 'Sickick',
            'score': 70,
          },
        ],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basics'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _onAnswerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
