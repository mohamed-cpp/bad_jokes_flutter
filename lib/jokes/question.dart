import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  final String question;

  Question({required this.question });

  @override
  Widget build(BuildContext context){
    return Container(
        margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Text(question, 
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold), 
              textAlign: TextAlign.center),
      );
  }
}