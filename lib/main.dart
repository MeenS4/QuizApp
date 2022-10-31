import 'package:flutter/material.dart';
import './question.dart';
import './answerButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\s your favorite animal?',
      'answers': ['Lion', 'Tiger', 'Rabbit', 'Cat']
    },
    {
      'questionText': 'What\s your favorite game?',
      'answers': ['LoL', 'Valorant', 'CsGo', 'Fortnite']
    },
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.grey[850],
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text(
                  'You did it!',
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Comic Sans',
                      color: Colors.black87),
                ),
              ),
      ),
    );
  }
}
