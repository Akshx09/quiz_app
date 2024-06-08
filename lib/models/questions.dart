class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList =List.of(answers);//copy
    shuffledList.shuffle();
    return shuffledList;
  }
}