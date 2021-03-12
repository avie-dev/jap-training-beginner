import 'package:flutter/material.dart';
import 'login/inputwrapper.dart';

class Home extends StatelessWidget {
  final double elevation;

  const Home({Key key, this.elevation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.lightBlue[500],
          Colors.lightBlue[600],
          Colors.lightBlue[900]
        ])),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
            ),
            CircleAvatar(
                radius: 100.0,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('images/jap-logo-white-bg.png'),
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: InputWrapper(),
              ))
            ]),
          ],
        ),
      )),
    );
  }
}
