class HiraganaQuizModel {
  String id;
  String memo;
  String question;
  String choicesA;
  String choicesB;
  String choicesC;
  String choicesD;
  String answer;
  String meaning;

  HiraganaQuizModel(
      {this.id,
      this.memo,
      this.question,
      this.choicesA,
      this.choicesB,
      this.choicesC,
      this.choicesD,
      this.answer,
      this.meaning});

  factory HiraganaQuizModel.fromJson(dynamic json) {
    return HiraganaQuizModel(
      id: "${json['id']}",
      memo: "${json['memo']}",
      question: "${json['question']}",
      choicesA: "${json['choicesA']}",
      choicesB: "${json['choicesB']}",
      choicesC: "${json['choicesC']}",
      choicesD: "${json['choicesD']}",
      answer: "${json['answer']}",
      meaning: "${json['meaning']}",
    );
  }

  Map toJson() => {
        "question": question,
        "memo": memo,
        "choicesA": choicesA,
        "choicesB": choicesB,
        "choicesC": choicesC,
        "choicesD": choicesD,
        "answer": answer,
        "meaning": meaning
      };
}
