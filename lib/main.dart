import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyStateApp();
  }
}

class _MyStateApp extends State<MyApp> {
  static final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Yellow', 'Green', 'Red']
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': ['Football', 'Bascketball', 'Voliball', 'Swimming']
    },
    {
      'questionText': 'What\'s your favorite fruite?',
      'answers': ['Strawberry', 'Banana', 'Coconat', 'Apple']
    },
    {
      'questionText': 'What\'s your favorite brand?',
      'answers': ['Samsung', 'LG', 'Sony', 'Apple']
    },
  ];
  var _questionIndex = 0;
  void _AnsweredQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: _questions.length > _questionIndex
          ? Quiz(
              AnsweredQuestion: _AnsweredQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    )));
  }
}
