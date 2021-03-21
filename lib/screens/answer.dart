import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //static const routeName = '/answer';
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answer),
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
        ),
      ),
    );
  }
}
