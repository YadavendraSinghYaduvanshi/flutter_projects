import 'package:flutter/material.dart';
import '../utils/question.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget{
@override
 State createState() => new QuizPazeState();
}

class QuizPazeState extends State<QuizPage>{
@override
  // TODO: implement context
  Widget build(BuildContext context) {
    // TODO: implement build
  return new Stack(
    children: <Widget>[
      new Column(//this is our main page
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
              child: new Material(
                color: Colors.greenAccent,
                child: new InkWell(
                  child: new Text('Start coding', textDirection: TextDirection.ltr,textAlign: TextAlign.center ,style: new TextStyle(fontSize: 32.0)),
                ),
              ) )
        ],
      )
    ],
  );
  }

}