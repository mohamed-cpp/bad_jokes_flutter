import 'package:flutter/material.dart';

class Buttons extends StatelessWidget{

  final Function(int) nextJoke;

  Buttons({required this.nextJoke});

  @override
  Widget build(BuildContext context){
    return Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: FloatingActionButton(onPressed: (){ nextJoke(-1);}, child: Icon(Icons.arrow_back, size: 30), backgroundColor: Color.fromRGBO(100, 150, 200, 1),)
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: FloatingActionButton(onPressed: (){ nextJoke(1);}, child: Icon(Icons.arrow_forward, size: 30,),backgroundColor: Color.fromRGBO(100, 150, 200, 1)),
        )
      ],
    );
  }
}