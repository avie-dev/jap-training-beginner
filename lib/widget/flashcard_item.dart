import 'package:flutter/material.dart';
import 'package:jap_training_beginner/widget/kana_flashcard.dart';

class FlashcardItem extends StatelessWidget {
  static const routeName = '/flashcard-items';

  final String id;
  final String kanarow;
  final String category;
  final String title;
  final String kana;
  final String roomaji;
  final Color color;

  FlashcardItem({
    this.id,
    this.kanarow,
    this.category,
    this.title,
    this.kana,
    this.roomaji,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Flashcard(
                // id: kanaARow[index].id,
                // kanarow: kanaARow[index].kanarow,
                // category: kanaARow[index].category,
                // kana: kanaARow[index].kana,
                // roomaji: kanaARow[index].roomaji,
                // color: kanaARow[index].color,
                );
          },
          itemCount: 5,
        ),
      ],
    );
  }
}
