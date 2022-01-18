import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: const Text("Welcome", 
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold), 
                    textAlign: TextAlign.center),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text("Data", 
                    style: TextStyle(fontSize: 25), 
                    textAlign: TextAlign.center),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: FloatingActionButton(onPressed: null, child: Icon(Icons.arrow_back, size: 30), backgroundColor: Color.fromRGBO(100, 150, 200, 1),)
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: FloatingActionButton(onPressed: null, child: Icon(Icons.arrow_forward, size: 30,),backgroundColor: Color.fromRGBO(100, 150, 200, 1)),
              )
            ],)
        ],))
      ),
    );
  }
}