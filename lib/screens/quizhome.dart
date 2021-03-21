import 'dart:async';

import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/models/katakanaquiz.dart';
import 'package:jap_training_beginner/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:jap_training_beginner/screens/quiz.dart';
import 'package:jap_training_beginner/widget/result.dart';

class QuizHome extends StatefulWidget {
  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  StreamSubscription<User> QuizHomeStateSubscription;
  String _fbUserName;
  String _fbPhotoUrl;

  final _questions = const [
    {
      'questionText': 'くろ',
      'answers': [
        {'text': 'kuro', 'score': 10},
        {'text': 'kewa', 'score': 5},
        {'text': 'kuri', 'score': 3},
        {'text': 'keri', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
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
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    QuizHomeStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      }
      _fbUserName = fbUser.displayName;
      // _fbPhotoUrl = fbUser.photoURL;
      // print('test' + _fbPhotoUrl);
    });
    super.initState();
  }

  @override
  void dispose() {
    QuizHomeStateSubscription.cancel();
    super.dispose();
  }

  void _handlePressed() {
    setState(() {
      print(_fbPhotoUrl);
    });
  }

  Widget _buildProfileIconButton() {
    const iconSize = 32.0;
    return IconButton(
      icon: _fbPhotoUrl == null
          ? Icon(
              Icons.account_circle,
              size: iconSize,
            )
          : CircleAvatar(
              backgroundImage: NetworkImage(_fbPhotoUrl),
              backgroundColor: Colors.transparent,
              radius: iconSize / 2,
            ),
      onPressed: _handlePressed,
    );
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
                  //leading: _buildProfileIconButton(),
                ),
                body: _questionIndex <= _questions.length
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
