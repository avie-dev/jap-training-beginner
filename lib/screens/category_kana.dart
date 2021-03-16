import 'package:flutter/material.dart';

class CategoryKana extends StatelessWidget {
  static const routeName = '/categories';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categorytitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body: Center(
        child: Text('kana here'),
      ),
    );
  }
}
