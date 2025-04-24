class QuizQuestionModel {
  final String question;
  final List<String> options;
  final String correctAnswer;

  const QuizQuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  bool isCorrect(int selectedOptionIndex) {
    return selectedOptionIndex == correctAnswer;
  }

  List<String> get shuffledOptions {
    final shuffledList = List<String>.from(options);

    shuffledList.shuffle();

    return shuffledList;
  }
}
