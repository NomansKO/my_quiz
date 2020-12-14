import 'package:flutter/material.dart';
import 'package:my_quiz/question.dart';

import 'answer.dart';


class Quiz extends StatelessWidget {


  final List<Map<String, Object>> questions;
  final int qIndex;
  final  Function ansQuestion;
const Quiz(this.questions, this.qIndex, this.ansQuestion);




  @override
  Widget build(BuildContext context) {
    return Column(children: [
    Question(questions[qIndex]['questionText']),

    ...(questions[qIndex]['answer'] as List<Map<String, Object>>).map((answer) {
    return Answer((()=>ansQuestion(answer['score'])),answer['text']);
    }).toList()






  ],

    );
  }
}