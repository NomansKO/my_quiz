import 'package:flutter/material.dart';
import 'package:my_quiz/quiz.dart';

import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is your favourite Color ? ',
      'answer': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Orange', 'score': 3},
        {'text': 'Black', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your favourite Animal ? ',
      'answer': [
        {'text': 'Camel', 'score': 1},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 3},
        {'text': 'Lion', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your favourite City ? ',
      'answer': [
        {'text': 'Lahore', 'score': 1},
        {'text': 'Multan', 'score': 2},
        {'text': 'Rawalpindi', 'score': 3},
        {'text': 'Vehari', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your favourite Friend ? ',
      'answer': [
        {'text': 'Noman', 'score': 100},
        {'text': 'Noman 2', 'score': 2},
      ]
    },
  ];

  var qIndex = 0;

  int _finalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: qIndex < questions.length
              ? Quiz(questions, qIndex, ansQuestion)
              : Result(totalScore: _finalScore,resetQuiz: _resetQuiz,)),
    );
  }



  ansQuestion(int score) {
    _finalScore += score;

    setState(() {
      qIndex++;
      print('Correct Answer');
    });
  }

  _resetQuiz(){
    setState(() {
      qIndex=0;
      _finalScore=0;
    });



  }
}
