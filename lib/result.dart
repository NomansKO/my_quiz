import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  const Result({this.totalScore,this.resetQuiz});

  String get resultPhrase {
    return 'Congratulation\'s \n     You  did\' it \n  with Score =$totalScore';
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),

        FlatButton(child: Text('Reset Quiz ',

          style: TextStyle(
          color: Colors.blue
          ),
        ),
        onPressed: resetQuiz,)
      ],)
    );
  }
}
