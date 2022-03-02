class Question {
  final int id;
  final int answer;

  final dynamic question;
  final List<String> options;

  Question(
      {required this.id,
      required this.answer,
      required this.options,
      required this.question});
}

// ignore: constant_identifier_names
List sampleData = [
  {
    "id": 1,
    "question":
        "Which of these products is not made by the Apple Corporation ?",
    "options": [
      "IMAX",
      "iPhone",
      "iMac",
      "iPod",
    ],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "'.JPG' extension refers usually to what kind of file?",
    "options": [
      "System file",
      "Animation/movie file",
      "MS Encarta document",
      "Image file",
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Who founded Apple Computer?",
    "options": ["Stephen Fry", "Bill Gates", "Steve Jobs", "Stephen Hawking"],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "A network designed to allow communication within an organization is called ____",
    "options": [
      "the World Wide Web",
      "Yahoo",
      "an intranet",
      "the Internet",
    ],
    "answer_index": 2,
  },
];
