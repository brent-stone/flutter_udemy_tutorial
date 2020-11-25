import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions.elementAt(questionIndex)), // or questions[0]
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion, // no () to pass pointer to function
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
