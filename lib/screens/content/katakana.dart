import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/models/katakana_question.dart';
import 'package:jap_training_beginner/screens/login/login.dart';
import 'package:jap_training_beginner/widget/result.dart';
import 'dart:convert' as convert;

import 'package:provider/provider.dart';

import '../quiz.dart';

class KatakanaQuiz extends StatefulWidget {
  static const routeName = '/katakanaquiz';

  @override
  _KatakanaQuizState createState() => _KatakanaQuizState();
}

class _KatakanaQuizState extends State<KatakanaQuiz> {
  StreamSubscription<User> quizHomeStateSubscription;
  String _fbUserName;

  final _questions = katakanaQuestions;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    quizHomeStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      }
      _fbUserName = fbUser.displayName;
    });
    super.initState();
  }

  @override
  void dispose() {
    quizHomeStateSubscription.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
        body: Center(
      child: StreamBuilder<User>(
          stream: authBloc.currentUser,
          builder: (context, snapshot) {
            return MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  title: Text(_fbUserName),
                ),
                body: _questionIndex < _questions.length
                    ? Quiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      )
                    : Result(_totalScore, _resetQuiz),
              ),
            );
          }),
    ));
  }
}
