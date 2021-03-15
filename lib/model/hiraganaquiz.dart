class HiraganaQuizModel {
  String id;
  String question;
  String choicesA;
  String choicesB;
  String choicesC;
  String choicesD;
  String answer;
  String meaning;

  HiraganaQuizModel(
      {this.id,
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
        "choicesA": choicesA,
        "choicesB": choicesB,
        "choicesC": choicesC,
        "choicesD": choicesD,
        "answer": answer,
        "meaning": meaning
      };
}
