import 'package:flutter/material.dart';
import 'package:jap_training_beginner/models/kana_data.dart';
import 'package:jap_training_beginner/models/kana_model.dart';
import 'package:jap_training_beginner/widget/kana_flashcard.dart';
import 'package:jap_training_beginner/widget/flashcard_item.dart';

class FlashcardScreen extends StatelessWidget {
  static const routeName = '/flashcardmenu';

  void showFlashItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(FlashcardItem.routeName, arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];

    /* Repeated code: Fix this later */
    final kanaARow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(aRow));
    }).toList();

    final kanaKaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(kaRow));
    }).toList();

    final kanaSaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(saRow));
    }).toList();

    final kanaTaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(taRow));
    }).toList();

    final kanaNaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(naRow));
    }).toList();

    final kanaHaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(haRow));
    }).toList();
    final kanaMaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(maRow));
    }).toList();
    final kanayaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(yaRow));
    }).toList();
    final kanaRaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(raRow));
    }).toList();
    final kanaWaRow = kanaInfo.where((kana) {
      return (kana.category.contains(categoryTitle) &&
          kana.kanarow.contains(waRow));
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(1.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return buildColumn(
                  kanaARow,
                  index,
                  kanaKaRow,
                  kanaSaRow,
                  kanaTaRow,
                  kanaNaRow,
                  kanaHaRow,
                  kanaMaRow,
                  kanayaRow,
                  kanaRaRow,
                  kanaWaRow);
            },
            itemCount: 5,
          ),
        ),
      ),
    );
  }

  Column buildColumn(
      List<KanaDictC1> kanaARow,
      int index,
      List<KanaDictC1> kanaKaRow,
      List<KanaDictC1> kanaSaRow,
      List<KanaDictC1> kanaTaRow,
      List<KanaDictC1> kanaNaRow,
      List<KanaDictC1> kanaHaRow,
      List<KanaDictC1> kanaMaRow,
      List<KanaDictC1> kanayaRow,
      List<KanaDictC1> kanaRaRow,
      List<KanaDictC1> kanaWaRow) {
    return Column(
      children: [
        /* Repeated code: Fix this later */
        Flashcard(
          id: kanaARow[index].id,
          kanarow: kanaARow[index].kanarow,
          category: kanaARow[index].category,
          kana: kanaARow[index].kana,
          roomaji: kanaARow[index].roomaji,
          color: kanaARow[index].color,
        ),
        Flashcard(
          id: kanaKaRow[index].id,
          kanarow: kanaKaRow[index].kanarow,
          category: kanaKaRow[index].category,
          kana: kanaKaRow[index].kana,
          roomaji: kanaKaRow[index].roomaji,
          color: kanaKaRow[index].color,
        ),
        Flashcard(
          id: kanaSaRow[index].id,
          kanarow: kanaSaRow[index].kanarow,
          category: kanaSaRow[index].category,
          kana: kanaSaRow[index].kana,
          roomaji: kanaSaRow[index].roomaji,
          color: kanaSaRow[index].color,
        ),
        Flashcard(
          id: kanaTaRow[index].id,
          kanarow: kanaTaRow[index].kanarow,
          category: kanaTaRow[index].category,
          kana: kanaTaRow[index].kana,
          roomaji: kanaTaRow[index].roomaji,
          color: kanaTaRow[index].color,
        ),
        Flashcard(
          id: kanaNaRow[index].id,
          kanarow: kanaNaRow[index].kanarow,
          category: kanaNaRow[index].category,
          kana: kanaNaRow[index].kana,
          roomaji: kanaNaRow[index].roomaji,
          color: kanaNaRow[index].color,
        ),
        Flashcard(
          id: kanaHaRow[index].id,
          kanarow: kanaHaRow[index].kanarow,
          category: kanaHaRow[index].category,
          kana: kanaHaRow[index].kana,
          roomaji: kanaHaRow[index].roomaji,
          color: kanaHaRow[index].color,
        ),
        Flashcard(
          id: kanaMaRow[index].id,
          kanarow: kanaMaRow[index].kanarow,
          category: kanaMaRow[index].category,
          kana: kanaMaRow[index].kana,
          roomaji: kanaMaRow[index].roomaji,
          color: kanaMaRow[index].color,
        ),
        Flashcard(
          id: kanayaRow[index].id,
          kanarow: kanayaRow[index].kanarow,
          category: kanayaRow[index].category,
          kana: kanayaRow[index].kana,
          roomaji: kanayaRow[index].roomaji,
          color: kanayaRow[index].color,
        ),
        Flashcard(
          id: kanaRaRow[index].id,
          kanarow: kanaRaRow[index].kanarow,
          category: kanaRaRow[index].category,
          kana: kanaRaRow[index].kana,
          roomaji: kanaRaRow[index].roomaji,
          color: kanaRaRow[index].color,
        ),
        Flashcard(
          id: kanaWaRow[index].id,
          kanarow: kanaWaRow[index].kanarow,
          category: kanaWaRow[index].category,
          kana: kanaWaRow[index].kana,
          roomaji: kanaWaRow[index].roomaji,
          color: kanaWaRow[index].color,
        ),
      ],
    );
  }
}
