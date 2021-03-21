import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 10) {
      resultText = 'You are awesome! That\'s perfect!';
    } else if (resultScore >= 9) {
      resultText = 'Good! Just one more try!';
    } else if (resultScore >= 5) {
      resultText = 'Good! Just one more try!';
    } else if (resultScore >= 1) {
      resultText = 'Better luck next time!';
    } else {
      resultText = 'It\'s okay! Try again';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(resultScore.toString()),
          TextButton(
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
