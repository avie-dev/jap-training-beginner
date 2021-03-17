import 'package:flutter/material.dart';

class KanaDict {
  final String id;
  final String kanarow;
  final String category;
  final String kana;
  final String roomaji;
  final Color color;

  const KanaDict(
      {this.id,
      this.kanarow,
      this.category,
      this.kana,
      this.roomaji,
      this.color});
}
