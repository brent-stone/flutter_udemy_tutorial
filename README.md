# Notes

General notes from the Udemy.com hosted "Flutter & Dart - The Complete Guide [2020 Edition]" by Max Schwarzmuller.

## Primatives / Keywords
void
int
double  (no float)
num (parent class)

// Comment
var variableName;		<-- best practice to enable type inference flexibility
String stringName;
var myList = [1, 2, 3];
<Widget>[] <-- list of widgets

## Widget Types: Output & Input (Visible)
- RaisedButton()
- Text()
- Card()
- Container()

## Widget Types: Layout & Control (Invisible)
- Row()
- Column()
- ListView()
- Container()

## Class Example: Very Basic
class Person {
  String name;
  int age;

  Person(String inputName, int inputAge) {
    this.name = inputName;
    this.age = inputAge;
  }
}

void main() {
  var person1 = Person("Max", 30);
  print(p1.name);
}

## Class Example: Adding Optional Keyword Arguments
Optional keyword arguments:
Person({@required String inputName, int inputAge = 30})  <-- @required is Flutter, not Dart
...
var p1 = Person(inputName: "Max", age: 30);

## Class Example: Minimal StatelessWidget Descendent
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("Hello!"));
  }
}

## An abbreviated main() syntax
void main() => runApp(MyApp());

