import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Image(
              image: AssetImage(questionText),
              height: 250,
            )),
      ],
    );
  }
}
