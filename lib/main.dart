import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite fruite?',
    'What\'s your favorite sport?',
  ];
  void QuestionAnswered() {
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: Column(
        children: [
          Text('question title'),
          RaisedButton(child: Text('Answer1'), onPressed: QuestionAnswered),
          RaisedButton(child: Text('Answer2'), onPressed: QuestionAnswered),
          RaisedButton(child: Text('Answer3'), onPressed: QuestionAnswered),
        ],
      ),
    ));
  }
}
