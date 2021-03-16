import 'package:flutter/material.dart';
import 'package:jap_training_beginner/models/category_data.dart';
import 'package:jap_training_beginner/screens/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Container(child: Padding(padding: EdgeInsets.all(20.0))),
      SizedBox(),
      CircleAvatar(
        backgroundImage: AssetImage('images/jap-logo-white-bg.png'),
        radius: 60.0,
      ),
      Text('Japanese Language Training (Kana)',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          )),
      Expanded(
          child: GridView(
              children: trainingCategories
                  .map((catData) =>
                      CategoryItem(catData.id, catData.title, catData.color))
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              )))
    ]));
  }
}
