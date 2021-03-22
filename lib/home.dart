import 'dart:async';

import 'package:jap_training_beginner/auth/auth.dart';
import 'package:jap_training_beginner/screens/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:provider/provider.dart';
import 'package:jap_training_beginner/screens/quizhome.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StreamSubscription<User> homeStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    homeStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    homeStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
        body: Center(
      child: StreamBuilder<User>(
          stream: authBloc.currentUser,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return CircularProgressIndicator();

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(snapshot.data.displayName,
                    style: TextStyle(fontSize: 35.0)),
                SizedBox(
                  height: 20.0,
                ),
                Text(snapshot.data.photoURL),
                CircleAvatar(
                  backgroundImage: AssetImage('images/jap-logo-white-bg.png'),
                  radius: 60.0,
                ),
                SizedBox(
                  height: 100.0,
                ),
                SignInButton(Buttons.Facebook,
                    text: 'Sign out of Facebook',
                    onPressed: () => authBloc.logout())
              ],
            );
          }),
    ));
  }
}
