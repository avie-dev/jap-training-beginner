import 'package:flutter/material.dart';

class KanaDictC1 {
  final String id;
  final String kanarow;
  final String category;
  final String kana;
  final String roomaji;
  final Color color;

  const KanaDictC1(
      {this.id,
      this.kanarow,
      this.category,
      this.kana,
      this.roomaji,
      this.color});
}

class KanaRowsInfo {
  final List<KanaDictC1> kanaRowList;
  const KanaRowsInfo(this.kanaRowList);
}
