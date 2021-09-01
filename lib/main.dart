import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 6},
        {'text': 'Bascketball', 'score': 10},
        {'text': 'Voliball', 'score': 3},
        {'text': 'Swimming', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favorite fruite?',
      'answers': [
        {'text': 'Strawberry', 'score': 5},
        {'text': 'Banana', 'score': 7},
        {'text': 'Coconat', 'score': 6},
        {'text': 'Apple', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite brand?',
      'answers': [
        {'text': 'Samsung', 'score': 10},
        {'text': 'LG', 'score': 2},
        {'text': 'Sony', 'score': 4},
        {'text': 'Apple', 'score': 7}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _quizResetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: _questions.length > _questionIndex
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore,_quizResetHandler),
    ));
  }
}
