import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jap_training_beginner/models/hiraganaquiz.dart';
import 'dart:convert' as convert;

class HiraganaQuiz extends StatefulWidget {
  @override
  _HiraganaQuizState createState() => _HiraganaQuizState();
}

class _HiraganaQuizState extends State<HiraganaQuiz> {
  List<HiraganaQuizModel> hiragana = <HiraganaQuizModel>[];

  getHiraganaQuizFromSheet() async {
    return await http
        .get(Uri.https("script.google.com",
            "/macros/s/AKfycbzGMrI-KwE8Wrokbkv4f6I_blZjSMgjwZOH04rLTpRJk4qIH7TGw0JnoDbpZ6L5MZt_TA/exec"))
        .then((response) {
      var jsonHiraganaQuiz = convert.jsonDecode(response.body) as List;
      jsonHiraganaQuiz.forEach((element) {
        HiraganaQuizModel hiraganaModel = new HiraganaQuizModel();
        hiraganaModel.id = element['id'];
        hiraganaModel.memo = element['memo'];
        hiraganaModel.question = element['question'];
        hiraganaModel.choicesA = element['choicesA'];
        hiraganaModel.choicesB = element['choicesB'];
        hiraganaModel.choicesC = element['choicesC'];
        hiraganaModel.choicesD = element['choicesD'];
        hiraganaModel.question = element['question'];
        hiraganaModel.answer = element['answer'];
        hiraganaModel.meaning = element['meaning'];
        print(hiraganaModel);
        hiragana.add(hiraganaModel);
      });
    });
  }

  @override
  void initState() {
    getHiraganaQuizFromSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hiragana Quiz"),
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: hiragana.length,
            itemBuilder: (context, index) {
              return QuizTile(
                id: hiragana[index].id,
                memo: hiragana[index].memo,
                question: hiragana[index].question,
                choicesA: hiragana[index].choicesA,
                choicesB: hiragana[index].choicesB,
                choicesC: hiragana[index].choicesC,
                choicesD: hiragana[index].choicesD,
                answer: hiragana[index].answer,
                meaning: hiragana[index].meaning,
              );
            }),
      ),
    );
  }
}

class QuizTile extends StatelessWidget {
  final String id,
      memo,
      question,
      choicesA,
      choicesB,
      choicesC,
      choicesD,
      answer,
      meaning;
  QuizTile({
    this.id,
    this.memo,
    this.question,
    this.choicesA,
    this.choicesB,
    this.choicesC,
    this.choicesD,
    this.answer,
    this.meaning,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('QUESTION'), Text("$question"), Text("$answer")],
      ),
    );
  }
}
