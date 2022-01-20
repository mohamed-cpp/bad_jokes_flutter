import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  final String answer;

  Answer({required this.answer });

  @override
  Widget build(BuildContext context){
    return Container(
        margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Text(answer, 
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400), 
              textAlign: TextAlign.center),
      );
  }
}