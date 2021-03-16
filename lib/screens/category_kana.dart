import 'package:flutter/material.dart';
import 'package:jap_training_beginner/screens/category_kana.dart';

class CategoryKana extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryKana(this.id, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('kana here'),
      ),
    );
  }
}
