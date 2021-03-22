import 'package:flutter/material.dart';
import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/screens/content/katakana.dart';
import 'package:jap_training_beginner/screens/content/quizcategory.dart';
import './screens/login/login.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'Japanese Language Training',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway'),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => Login(),
          KatakanaQuiz.routeName: (ctx) => KatakanaQuiz(),
          CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        },
      ),
    );
  }
}
