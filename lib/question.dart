import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String question;

  const Question(this.question) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child:
      Text(question,
        textAlign: TextAlign.center ,
      textScaleFactor: 1.5,),

    );
  }
}


