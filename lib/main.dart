import "package:flutter/material.dart";

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      // alternatively: Map()
      {
        'questionText': "What\'s your favorite color?",
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': "What\'s your favorite city?",
        'answers': ['Boston', 'Savannah', 'Paris', 'Seoul'],
      },
      {
        'questionText': "Who\'s your favorite instructor?",
        'answers': ['Max', 'Sarah', 'John', 'Kim'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'], // or questions[0]
            ),

            /// ... is the spread operator
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
