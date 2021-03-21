import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //static const routeName = '/answer';
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 10,
        child: ElevatedButton(
          child: Text(answer),
          onPressed: selectHandler,
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: Colors.white70,
            shadowColor: Colors.red,
            padding: EdgeInsets.all(20),
            onPrimary: Colors.blueGrey,
            textStyle: TextStyle(fontSize: 25),
            side: BorderSide(color: Colors.blueGrey, width: 1),
            tapTargetSize: MaterialTapTargetSize.padded,
          ),
        ),
      ),
    );
  }
}
