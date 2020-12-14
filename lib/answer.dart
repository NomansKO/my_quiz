import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final Function ansQuestion;
  final String ansText;

  const Answer(this.ansQuestion, this.ansText) ;



  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20,right: 20),


        child:
        RaisedButton(
          color: Colors.blue[300],
          child: Text(ansText),
          onPressed: ansQuestion,
        ),




    );
  }
}
