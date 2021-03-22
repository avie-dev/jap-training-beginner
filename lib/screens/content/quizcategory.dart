import 'package:flutter/material.dart';
import 'package:jap_training_beginner/models/katakana_menu_data.dart';
import 'package:jap_training_beginner/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categoryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg/colorfulbg.gif"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(children: <Widget>[
              Container(child: Padding(padding: EdgeInsets.all(30.0))),
              SizedBox(),
              Text(
                'Choose your quiz category.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.blue,
                      offset: Offset(5.0, 5.0),
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                  child: GridView(
                      children: katakanaCategories
                          .map((catData) => CategoryItem(
                              catData.id, catData.title, catData.imgUrl))
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
      ),
    );
  }
}
