import 'package:flutter/material.dart';
import 'package:jap_training_beginner/screens/category_kana.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String img;

  CategoryItem(this.id, this.title, this.color, this.img);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(FlashcardScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.blue,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        //padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                color: Colors.black54,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.yellow,
              backgroundImage: AssetImage('images/gold_frame.png'),
              child: CircleAvatar(
                backgroundImage: AssetImage(img),
                radius: 58.0,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.1), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
