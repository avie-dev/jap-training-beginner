import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Japanese Language Training'),
            CircleAvatar(
              radius: 150.0,
              child: Image(
                image: AssetImage('images/jap-training.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
