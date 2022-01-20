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
            Container(
              margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Text(_jokes[jokesindex]["question"] as String, 
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold), 
                    textAlign: TextAlign.center),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Text(_jokes[jokesindex]["answer"] as String, 
                    style: TextStyle(fontSize: 25), 
                    textAlign: TextAlign.center),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: FloatingActionButton(onPressed: (){ nextJoke(-1);}, child: Icon(Icons.arrow_back, size: 30), backgroundColor: Color.fromRGBO(100, 150, 200, 1),)
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: FloatingActionButton(onPressed: (){ nextJoke(1);}, child: Icon(Icons.arrow_forward, size: 30,),backgroundColor: Color.fromRGBO(100, 150, 200, 1)),
              )
            ],)
        ],))
      ),
    );
  }
}