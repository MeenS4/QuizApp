import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 25,
          color: Colors.grey[850],
          fontFamily: 'Montserrat',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
