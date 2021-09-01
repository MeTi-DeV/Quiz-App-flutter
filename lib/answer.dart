import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final  VoidCallback selectorHandler;
  final String answerText;
  Answer(this.selectorHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.redAccent,
          child: Text(answerText),
          onPressed: selectorHandler,
          textColor: Colors.white,
        ));
  }
}
