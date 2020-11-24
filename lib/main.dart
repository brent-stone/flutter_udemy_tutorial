import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen!");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First app"),
        ),
        body: Column(
          children: [
            Text("The Question!"),
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
