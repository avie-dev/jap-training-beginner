import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jap_training_beginner/model/hiraganaquiz.dart';
import 'dart:convert' as convert;

class HiraganaQuiz extends StatefulWidget {
  @override
  _HiraganaQuizState createState() => _HiraganaQuizState();
}

class _HiraganaQuizState extends State<HiraganaQuiz> {
  List<HiraganaQuizModel> hiragana = <HiraganaQuizModel>[];

  getHiraganaQuizFromSheet() async {
    return await http
        .get(Uri.http("https://script.google.com",
            "/macros/s/AKfycbzGMrI-KwE8Wrokbkv4f6I_blZjSMgjwZOH04rLTpRJk4qIH7TGw0JnoDbpZ6L5MZt_TA/exec"))
        .then((response) {
      var jsonHiraganaQuiz = convert.jsonDecode(response.body) as List;
      return jsonHiraganaQuiz
          .map((json) => HiraganaQuizModel.fromJson(json))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text('test'));
  }
}
