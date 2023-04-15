import 'package:flutter/material.dart';
import 'package:flutternew/quiz.dart';
import 'package:flutternew/result.dart';




void main() {
  runApp( MyApp());
}


class  MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  
   
   return MyAppstate();
  }
}

 

class MyAppstate extends State<MyApp> {
  var questionIndex=0;
  int  _score=0;
  
  void answerquestion(int score){
    _score = _score+score;
    print("score: $_score");
    setState(() {
      
    });
    questionIndex=questionIndex+1;
    print('Answer chose');
  }



  var question=[

{
  'question':'10+20',
  'answer':[
    {'text':'20','score':10},
    {'text':'30','score':7},
    {'text':'40','score':5},
    {'text':'50','score':2},
]
},

{
  'question':'30+40',
  'answer':[
   {'text':'40','score':10},
    {'text':'50','score':8},
    {'text':'60','score':6},
    {'text':'70','score':5},

  ]
},


    
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('My frist App'),
        ),
        body: questionIndex <question.length ? Quiz(question, answerquestion, questionIndex)
             :Result(_score)),
    );
  }
}
