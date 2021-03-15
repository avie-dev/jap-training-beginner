import 'package:flutter/material.dart';

import '../landing.dart';

class WebApp extends StatelessWidget {
  const WebApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landing(),
      debugShowCheckedModeBanner: false,
    );
  }
}
