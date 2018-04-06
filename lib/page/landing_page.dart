import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget{
  int _counter = 0;
  String _name = "Test...";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: ()=>debugPrint("we pressed"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,textDirection: TextDirection.ltr,
            ),
            new Text(
              'Hello, $_name! How are you?',textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text('Start coding', textDirection: TextDirection.ltr,textAlign: TextAlign.center ,style: new TextStyle(fontSize: 32.0))
          ]
        ),
      ),
    );
  }

}