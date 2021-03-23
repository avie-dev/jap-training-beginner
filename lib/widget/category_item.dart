import 'package:flutter/material.dart';
import 'package:jap_training_beginner/screens/content/katakana.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;

  CategoryItem(this.id, this.title, this.imgUrl);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(KatakanaQuiz.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.blue,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FittedBox(
              child: Card(
                elevation: 10.0,
                child: Container(
                  height: 90,
                  width: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Image(
                      fit: BoxFit.contain,
                      alignment: Alignment.topRight,
                      image: AssetImage(imgUrl),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
