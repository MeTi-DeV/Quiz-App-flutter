import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesionText;
  Question(this.quesionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quesionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
