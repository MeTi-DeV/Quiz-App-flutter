import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandller;
  Result(this.resultScore, this.resetHandller);
  String get scoreMessage {
    String result_Message = 'You are so bad';

    if (resultScore <= 12) {
      result_Message = 'Good Work';
    } else if (resultScore <= 18) {
      result_Message = 'Nice Choises';
    } else if (resultScore <= 30 && resultScore == 37) {
      result_Message = 'Wow ... you are pretty intelligent';
    }
    return result_Message;
  }

  String get ScoreNumber_show {
    String ScoreNumber = 'Your Score : ' + ' ' + resultScore.toString();
    return ScoreNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              scoreMessage,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              ScoreNumber_show,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.pink.shade900,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all(Colors.indigo.shade600)),
              child: Text('Reset Quiz'),
              onPressed: resetHandller,
            )
          ],
        ),
      ),
    );
  }
}
