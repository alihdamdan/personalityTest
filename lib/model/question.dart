import 'package:personality_test/model/answer.dart';

class Question {
  const Question(this.text, this.answers);
  final String text;
  final List<Answer> answers;
}