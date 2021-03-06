import 'package:flutter/material.dart';
import '../models/kana_model.dart';

const kanaInfo = const [
  KanaDictC1(
      id: 'kd1',
      kanarow: 'preARow',
      category: 'Hiragana List',
      kana: 'あ',
      roomaji: 'a',
      color: Colors.green),
  KanaDictC1(
      id: 'kd2',
      kanarow: 'preARow',
      category: 'Hiragana List',
      kana: 'い',
      roomaji: 'i',
      color: Colors.green),
  KanaDictC1(
      id: 'kd3',
      kanarow: 'preARow',
      category: 'Hiragana List',
      kana: 'う',
      roomaji: 'u',
      color: Colors.green),
  KanaDictC1(
      id: 'kd4',
      kanarow: 'preARow',
      category: 'Hiragana List',
      kana: 'え',
      roomaji: 'e',
      color: Colors.green),
  KanaDictC1(
      id: 'kd5',
      kanarow: 'preARow',
      category: 'Hiragana List',
      kana: 'お',
      roomaji: 'o',
      color: Colors.green),
  KanaDictC1(
      id: 'kd6',
      kanarow: 'kaRow',
      category: 'Hiragana List',
      kana: 'か',
      roomaji: 'ka',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd7',
      kanarow: 'kaRow',
      category: 'Hiragana List',
      kana: 'き',
      roomaji: 'ki',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd8',
      kanarow: 'kaRow',
      category: 'Hiragana List',
      kana: 'く',
      roomaji: 'ku',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd9',
      kanarow: 'kaRow',
      category: 'Hiragana List',
      kana: 'け',
      roomaji: 'ke',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd10',
      kanarow: 'kaRow',
      category: 'Hiragana List',
      kana: 'こ',
      roomaji: 'ko',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd11',
      kanarow: 'saRow',
      category: 'Hiragana List',
      kana: 'さ',
      roomaji: 'sa',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd12',
      kanarow: 'saRow',
      category: 'Hiragana List',
      kana: 'し',
      roomaji: 'shi',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd13',
      kanarow: 'saRow',
      category: 'Hiragana List',
      kana: 'す',
      roomaji: 'su',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd14',
      kanarow: 'saRow',
      category: 'Hiragana List',
      kana: 'せ',
      roomaji: 'se',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd15',
      kanarow: 'saRow',
      category: 'Hiragana List',
      kana: 'そ',
      roomaji: 'so',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd16',
      kanarow: 'taRow',
      category: 'Hiragana List',
      kana: 'た',
      roomaji: 'ta',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd17',
      kanarow: 'taRow',
      category: 'Hiragana List',
      kana: 'ち',
      roomaji: 'chi',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd18',
      kanarow: 'taRow',
      category: 'Hiragana List',
      kana: 'つ',
      roomaji: 'tsu',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd19',
      kanarow: 'taRow',
      category: 'Hiragana List',
      kana: 'て',
      roomaji: 'te',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd20',
      kanarow: 'taRow',
      category: 'Hiragana List',
      kana: 'と',
      roomaji: 'to',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd21',
      kanarow: 'naRow',
      category: 'Hiragana List',
      kana: 'な',
      roomaji: 'na',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd22',
      kanarow: 'naRow',
      category: 'Hiragana List',
      kana: 'に',
      roomaji: 'ni',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd23',
      kanarow: 'naRow',
      category: 'Hiragana List',
      kana: 'ぬ',
      roomaji: 'nu',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd24',
      kanarow: 'naRow',
      category: 'Hiragana List',
      kana: 'ね',
      roomaji: 'ne',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd25',
      kanarow: 'naRow',
      category: 'Hiragana List',
      kana: 'の',
      roomaji: 'no',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd26',
      kanarow: 'haRow',
      category: 'Hiragana List',
      kana: 'は',
      roomaji: 'ha',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd27',
      kanarow: 'haRow',
      category: 'Hiragana List',
      kana: 'ひ',
      roomaji: 'hi',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd28',
      kanarow: 'haRow',
      category: 'Hiragana List',
      kana: 'ふ',
      roomaji: 'fu',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd29',
      kanarow: 'haRow',
      category: 'Hiragana List',
      kana: 'へ',
      roomaji: 'he',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd30',
      kanarow: 'haRow',
      category: 'Hiragana List',
      kana: 'ほ',
      roomaji: 'ho',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd31',
      kanarow: 'maRow',
      category: 'Hiragana List',
      kana: 'ま',
      roomaji: 'ma',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd32',
      kanarow: 'maRow',
      category: 'Hiragana List',
      kana: 'み',
      roomaji: 'mi',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd33',
      kanarow: 'maRow',
      category: 'Hiragana List',
      kana: 'む',
      roomaji: 'mu',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd34',
      kanarow: 'maRow',
      category: 'Hiragana List',
      kana: 'め',
      roomaji: 'me',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd35',
      kanarow: 'maRow',
      category: 'Hiragana List',
      kana: 'も',
      roomaji: 'mo',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd36',
      kanarow: 'yaRow',
      category: 'Hiragana List',
      kana: 'や',
      roomaji: 'ya',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd37',
      kanarow: 'yaRow',
      category: 'Hiragana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd38',
      kanarow: 'yaRow',
      category: 'Hiragana List',
      kana: 'ゆ',
      roomaji: 'yu',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd39',
      kanarow: 'yaRow',
      category: 'Hiragana List',
      kana: '',
      roomaji: ' ',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd40',
      kanarow: 'yaRow',
      category: 'Hiragana List',
      kana: 'よ',
      roomaji: 'yo',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd41',
      kanarow: 'raRow',
      category: 'Hiragana List',
      kana: 'ら',
      roomaji: 'ra',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd42',
      kanarow: 'raRow',
      category: 'Hiragana List',
      kana: 'り',
      roomaji: 'ri',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd43',
      kanarow: 'raRow',
      category: 'Hiragana List',
      kana: 'る',
      roomaji: 'ru',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd44',
      kanarow: 'raRow',
      category: 'Hiragana List',
      kana: 'れ',
      roomaji: 're',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd45',
      kanarow: 'raRow',
      category: 'Hiragana List',
      kana: 'ろ',
      roomaji: 'ro',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd46',
      kanarow: 'waRow',
      category: 'Hiragana List',
      kana: 'わ',
      roomaji: 'wa',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd47',
      kanarow: 'waRow',
      category: 'Hiragana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd48',
      kanarow: 'waRow',
      category: 'Hiragana List',
      kana: 'を',
      roomaji: 'o',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd49',
      kanarow: 'waRow',
      category: 'Hiragana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd49',
      kanarow: 'waRow',
      category: 'Hiragana List',
      kana: 'ん',
      roomaji: 'n',
      color: Colors.pink),

  /* ---Katakana Start--- */

  KanaDictC1(
      id: 'kd1',
      kanarow: 'preARow',
      category: 'Katakana List',
      kana: 'ア',
      roomaji: 'a',
      color: Colors.green),
  KanaDictC1(
      id: 'kd2',
      kanarow: 'preARow',
      category: 'Katakana List',
      kana: 'イ',
      roomaji: 'i',
      color: Colors.green),
  KanaDictC1(
      id: 'kd3',
      kanarow: 'preARow',
      category: 'Katakana List',
      kana: 'ウ',
      roomaji: 'u',
      color: Colors.green),
  KanaDictC1(
      id: 'kd4',
      kanarow: 'preARow',
      category: 'Katakana List',
      kana: 'エ',
      roomaji: 'e',
      color: Colors.green),
  KanaDictC1(
      id: 'kd5',
      kanarow: 'preARow',
      category: 'Katakana List',
      kana: 'オ',
      roomaji: 'o',
      color: Colors.green),
  KanaDictC1(
      id: 'kd6',
      kanarow: 'kaRow',
      category: 'Katakana List',
      kana: 'カ',
      roomaji: 'ka',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd7',
      kanarow: 'kaRow',
      category: 'Katakana List',
      kana: 'キ',
      roomaji: 'ki',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd8',
      kanarow: 'kaRow',
      category: 'Katakana List',
      kana: 'ク',
      roomaji: 'ku',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd9',
      kanarow: 'kaRow',
      category: 'Katakana List',
      kana: 'ケ',
      roomaji: 'ke',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd10',
      category: 'Katakana List',
      kanarow: 'kaRow',
      kana: 'コ',
      roomaji: 'ko',
      color: Colors.blue),
  KanaDictC1(
      id: 'kd11',
      kanarow: 'saRow',
      category: 'Katakana List',
      kana: 'サ',
      roomaji: 'sa',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd12',
      kanarow: 'saRow',
      category: 'Katakana List',
      kana: 'シ',
      roomaji: 'shi',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd13',
      kanarow: 'saRow',
      category: 'Katakana List',
      kana: 'ス',
      roomaji: 'su',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd14',
      kanarow: 'saRow',
      category: 'Katakana List',
      kana: 'セ',
      roomaji: 'se',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd15',
      kanarow: 'saRow',
      category: 'Katakana List',
      kana: 'ソ',
      roomaji: 'so',
      color: Colors.purple),
  KanaDictC1(
      id: 'kd16',
      kanarow: 'taRow',
      category: 'Katakana List',
      kana: 'タ',
      roomaji: 'ta',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd17',
      kanarow: 'taRow',
      category: 'Katakana List',
      kana: 'チ',
      roomaji: 'chi',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd18',
      kanarow: 'taRow',
      category: 'Katakana List',
      kana: 'ツ',
      roomaji: 'tsu',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd19',
      kanarow: 'taRow',
      category: 'Katakana List',
      kana: 'テ',
      roomaji: 'te',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd20',
      kanarow: 'taRow',
      category: 'Katakana List',
      kana: 'ト',
      roomaji: 'to',
      color: Colors.teal),
  KanaDictC1(
      id: 'kd21',
      kanarow: 'naRow',
      category: 'Katakana List',
      kana: 'ナ',
      roomaji: 'na',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd22',
      kanarow: 'naRow',
      category: 'Katakana List',
      kana: 'ニ',
      roomaji: 'ni',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd23',
      kanarow: 'naRow',
      category: 'Katakana List',
      kana: 'ヌ',
      roomaji: 'nu',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd24',
      kanarow: 'naRow',
      category: 'Katakana List',
      kana: 'ネ',
      roomaji: 'ne',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd25',
      kanarow: 'naRow',
      category: 'Katakana List',
      kana: 'ノ',
      roomaji: 'no',
      color: Colors.orange),
  KanaDictC1(
      id: 'kd26',
      kanarow: 'haRow',
      category: 'Katakana List',
      kana: 'ハ',
      roomaji: 'ha',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd27',
      kanarow: 'haRow',
      category: 'Katakana List',
      kana: 'ヒ',
      roomaji: 'hi',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd28',
      kanarow: 'haRow',
      category: 'Katakana List',
      kana: 'フ',
      roomaji: 'fu',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd29',
      kanarow: 'haRow',
      category: 'Katakana List',
      kana: 'へ',
      roomaji: 'he',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd30',
      kanarow: 'haRow',
      category: 'Katakana List',
      kana: 'ホ',
      roomaji: 'ho',
      color: Colors.blueGrey),
  KanaDictC1(
      id: 'kd31',
      kanarow: 'maRow',
      category: 'Katakana List',
      kana: 'マ',
      roomaji: 'ma',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd32',
      kanarow: 'maRow',
      category: 'Katakana List',
      kana: 'ミ',
      roomaji: 'mi',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd33',
      kanarow: 'maRow',
      category: 'Katakana List',
      kana: 'ム',
      roomaji: 'mu',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd34',
      kanarow: 'maRow',
      category: 'Katakana List',
      kana: 'メ',
      roomaji: 'me',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd35',
      kanarow: 'maRow',
      category: 'Katakana List',
      kana: 'モ',
      roomaji: 'mo',
      color: Colors.redAccent),
  KanaDictC1(
      id: 'kd36',
      kanarow: 'yaRow',
      category: 'Katakana List',
      kana: 'ヤ',
      roomaji: 'ya',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd37',
      kanarow: 'yaRow',
      category: 'Katakana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.white),
  KanaDictC1(
      id: 'kd38',
      kanarow: 'yaRow',
      category: 'Katakana List',
      kana: 'ユ',
      roomaji: 'yu',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd39',
      kanarow: 'yaRow',
      category: 'Katakana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.white),
  KanaDictC1(
      id: 'kd40',
      kanarow: 'yaRow',
      category: 'Katakana List',
      kana: 'ヨ',
      roomaji: 'yo',
      color: Colors.blueAccent),
  KanaDictC1(
      id: 'kd41',
      kanarow: 'raRow',
      category: 'Katakana List',
      kana: 'ラ',
      roomaji: 'ra',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd42',
      kanarow: 'raRow',
      category: 'Katakana List',
      kana: 'リ',
      roomaji: 'ri',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd43',
      kanarow: 'raRow',
      category: 'Katakana List',
      kana: 'ル',
      roomaji: 'ru',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd44',
      kanarow: 'raRow',
      category: 'Katakana List',
      kana: 'レ',
      roomaji: 're',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd45',
      kanarow: 'raRow',
      category: 'Katakana List',
      kana: 'ロ',
      roomaji: 'ro',
      color: Colors.deepPurple),
  KanaDictC1(
      id: 'kd46',
      kanarow: 'waRow',
      category: 'Katakana List',
      kana: 'ワ',
      roomaji: 'wa',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd47',
      kanarow: 'waRow',
      category: 'Katakana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd48',
      kanarow: 'waRow',
      category: 'Katakana List',
      kana: 'ヲ',
      roomaji: 'o',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd49',
      kanarow: 'waRow',
      category: 'Katakana List',
      kana: ' ',
      roomaji: ' ',
      color: Colors.pink),
  KanaDictC1(
      id: 'kd49',
      kanarow: 'waRow',
      category: 'Katakana List',
      kana: 'ン',
      roomaji: 'n',
      color: Colors.pink),
];

const aRow = 'preARow';
const kaRow = 'kaRow';
const saRow = 'saRow';
const taRow = 'taRow';
const naRow = 'naRow';
const haRow = 'haRow';
const maRow = 'maRow';
const yaRow = 'yaRow';
const raRow = 'raRow';
const waRow = 'waRow';

const kanaRows = {
  [
    'a-ka rows',
    'sa-ta rows',
    'na-ha rows',
    'ma-ya rows',
    'ra-n rows',
  ]
};

const kanaRowsInfo = {};
