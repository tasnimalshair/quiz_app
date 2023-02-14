import 'package:flutter/material.dart';
import 'package:quiz_mansour/screens/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final questionIndex;
  final answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Question(question[questionIndex]['questionText'].toString()),
        SizedBox(
          height: 15,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((e) =>
                Answer(() => answerQuestion(e['score']), e['text'].toString()))
            .toList()
      ],
    );
  }
}
