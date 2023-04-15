import 'package:flutter/material.dart';


class Questions extends StatelessWidget{
  Questions(this.questionText);

  final questionText;
  @override
  Widget build(BuildContext context) {

   return Container(
    width: double.infinity,
    child: Text(
      questionText,
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,

      ),
      textAlign: TextAlign.center,
    ),
    
    );
   
  }
}