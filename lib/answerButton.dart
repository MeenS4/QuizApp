import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerAction;
  final String answerText;

  Answer(this.answerAction, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ElevatedButton(
        onPressed: answerAction,
        child: Text(
          this.answerText,
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey[850]),
            textStyle:
                MaterialStateProperty.all(TextStyle(color: Colors.white10))),
      ),
    );
  }
}
