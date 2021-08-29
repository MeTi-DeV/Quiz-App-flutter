import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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
      body: Column(
        children: [
          Question(_questions[_questionIndex]['questionText'] as String),
          ...(_questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_AnsweredQuestion, answer);
          }).toList()
        ],
      ),
    )));
  }
}
