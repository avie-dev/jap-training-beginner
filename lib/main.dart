import 'package:flutter/material.dart';
import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/screens/content/hiragana.dart';
import 'package:jap_training_beginner/screens/landing.dart';
import 'package:jap_training_beginner/screens/login/login.dart';
import 'package:jap_training_beginner/screens/login/button.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Japanese Language Training',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        //home: Login(),
        home: HiraganaQuiz(),
      ),
    );
  }
}
