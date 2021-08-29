import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyStateApp();
  }
}

class MyStateApp extends State<MyApp> {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite fruite?',
    'What\'s your favorite sport?',
  ];
  var questionIndex = 0;
  void QuestionAnswered() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer1'), onPressed: QuestionAnswered),
          RaisedButton(child: Text('Answer2'), onPressed: QuestionAnswered),
          RaisedButton(child: Text('Answer3'), onPressed: QuestionAnswered),
        ],
      ),
    ));
  }
}
