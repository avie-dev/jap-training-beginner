import 'package:flutter/material.dart';

import '../widget/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Question(
              questions[questionIndex]['question'],
            ),
            ...(questions[questionIndex]['answers']
                    as List<Map<String, Object>>)
                .map((answer) {
              return Answer(
                  () => answerQuestion(answer['score']), answer['text']);
            }).toList()
          ],
        ),
      ),
    );
  }
}
