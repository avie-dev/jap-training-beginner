import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Flashcard extends StatelessWidget {
  static const routeName = '/flashcards';

  final String id;
  final String kanarow;
  final String category;
  final String title;
  final String kana;
  final String roomaji;
  final Color color;

  Flashcard({
    this.id,
    this.kanarow,
    this.category,
    this.title,
    this.kana,
    this.roomaji,
    this.color,
  });

  @override
  void selectRow() {}

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      )),
      child: Center(
        child: FlipCard(
          direction: FlipDirection.VERTICAL,
          speed: 1000,
          onFlipDone: (status) {
            print(status);
          },
          front: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                colors: [color.withOpacity(0.1), Colors.white70],
              )),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(kana,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              )),
          back: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                colors: [color.withOpacity(0.1), Colors.white70],
              )),
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(roomaji,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              )),
        ),
      ),
    );
  }
}
