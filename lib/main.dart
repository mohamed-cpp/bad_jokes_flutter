import 'package:bad_jokes/jokes/Answer.dart';
import 'package:bad_jokes/jokes/question.dart';
import 'package:bad_jokes/parts/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainApp();
  }
}

//class MainApp extends StatelessWidget{ // not refresh screen
class MainApp extends State<MyApp>{



  var _jokes = [
    {"question": "What does a baby computer call its father?", "answer": "Data"}, 
    {"question": "What's a pencil with two erasers called?", "answer": "Pointless"},
    {"question": "Why is the calendar always scared?", "answer": "Because it's days are numbered"},
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];
  var jokesindex = 0 ;
  nextJoke(int steps){
      var jokesLength = (_jokes.length - 1);
      int num = jokesindex + steps;
    setState(() {
      jokesindex = num < 0 ? jokesLength : num > jokesLength   ? 0 : num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(question: _jokes[jokesindex]["question"] as String),
            Answer(answer: _jokes[jokesindex]["answer"] as String),
            Buttons(nextJoke: nextJoke),
        ],))
      ),
    );
  }
}