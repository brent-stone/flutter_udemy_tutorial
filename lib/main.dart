import "package:flutter/material.dart";

import './question.dart';

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
      "What\'s your favorite color?",
      "What\'s your favorite city?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First app"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex], // or questions[0]
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion, // no () to pass pointer to function
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("This is an anonymous function for 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // a larger anonymous function
                print("answer 3 was chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
