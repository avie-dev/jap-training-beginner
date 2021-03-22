import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/models/katakana_question.dart';
import 'package:jap_training_beginner/screens/login/login.dart';
import 'package:jap_training_beginner/widget/result.dart';
import 'package:provider/provider.dart';
import '../quiz.dart';

class KatakanaQuiz extends StatefulWidget {
  static const routeName = '/katakanaQuiz';

  @override
  _KatakanaQuizState createState() => _KatakanaQuizState();
}

class _KatakanaQuizState extends State<KatakanaQuiz> {
  StreamSubscription<User> quizHomeStateSubscription;
  String _fbUserName;

  final _questions = katakanaQuestions;
  // get _questions =>
  //     katakanaQuestions.where((e) => e['memo'] == 'foods').toList();

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
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    var newQuestions =
        katakanaQuestions.where((e) => e['memo'] == categoryTitle).toList();
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
        body: Center(
      child: StreamBuilder<User>(
          stream: authBloc.currentUser,
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                title: Text(_fbUserName),
              ),
              body: _questionIndex < newQuestions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: newQuestions,
                    )
                  : Result(_totalScore, _resetQuiz),
            );
          }),
    ));
  }
}
