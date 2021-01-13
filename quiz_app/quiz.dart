import 'package:flutter/material.dart';
import 'package:flutter_app5/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final ques;
  final index;
  final fun;

  Quiz(this.ques,this.index,this.fun);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[index]['quesText'],
        ),
        ...(ques[index]['answer'] as List).map((answer) {
          return Answer(() => fun(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}