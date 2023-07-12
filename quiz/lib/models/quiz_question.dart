// outlines how a question should look
class QuizQuestion {
  const QuizQuestion(this.questionText, this.options);

  final String questionText;
  final List<String> options;

  // function to shuffle list without impacting the original list
  List<String> getShuffledOptions() {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
