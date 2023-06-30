import 'package:quiz_multiple_choice/models/multiple_choice/question_model.dart';

class QuizBrainMulti {
  int questionNumber = 0;
  int favorit = 0;

  final List<QuestionModel> questionBank = [
    QuestionModel(
      questionText: "Whats your Name",
      questionAnswer: 0,
      questionOption: ["Ahmad", "Rami", "Hassan"],
    ),
    QuestionModel(
      questionText: "How Old Are You",
      questionAnswer: 2,
      questionOption: ["10", "20", "30"],
    ),
    QuestionModel(
      questionText: "How much many do you spend in day",
      questionAnswer: 1,
      questionOption: ["10", "20", "30"],
    ),
  ];

  int getQuestionBankCount() {
    return questionBank.length;
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  int getQuestionAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }

  List getQuestionOption() {
    return questionBank[questionNumber].questionOption;
  }

  bool isFinshed() {
    if (questionNumber < questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  reset() {
    questionNumber = 0;
  }
}
