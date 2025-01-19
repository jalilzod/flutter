import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  final int questionNo;
  final Function() printButton;

  Quiz(
      {required this.questions,
      required this.printButton,
      required this.questionNo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((questions[questionNo]['questionText'] as String)),
        ...(questions[questionNo]['answers'] as List<String>).map((answer) {
          return Answer(printButton, answer);
        }).toList()
      ],
    );
  }
}
