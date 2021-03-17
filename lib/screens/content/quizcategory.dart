import 'package:flutter/material.dart';
import 'package:jap_training_beginner/models/category_data.dart';
import 'package:jap_training_beginner/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg/niceblue.png'),
                      fit: BoxFit.cover)),
              child: Column(children: <Widget>[
                Container(child: Padding(padding: EdgeInsets.all(30.0))),
                SizedBox(),
                Text('Choose your training menu.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                Expanded(
                    child: GridView(
                        children: trainingCategories
                            .map((catData) => CategoryItem(catData.id,
                                catData.title, catData.color, catData.img))
                            .toList(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 2 / 2,
                          crossAxisSpacing: 3,
                          mainAxisSpacing: 10,
                        )))
              ]),
            ),
          ],
        ));
  }
}
