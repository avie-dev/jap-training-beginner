import 'package:flutter/material.dart';

import '../home.dart';

class WebApp extends StatelessWidget {
  const WebApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
