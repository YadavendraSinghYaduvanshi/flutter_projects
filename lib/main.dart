import 'package:flutter/material.dart';
import 'page/landing_page.dart';
import 'page/quiz_page.dart';
import 'page/list_demo.dart';
import './first.dart' as first;
import './second.dart' as second;
import './third.dart' as third;
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() =>
    runApp(new MaterialApp(

      //home: new MyStateLessWidget(),
      //home: new AwsomeButton(),
      //home: new MyTab(),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/SecondPage": (BuildContext context) => new SecondPage(),
      },

    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                new Icon(Icons.star, color: Colors.black),
                new Icon(Icons.star, color: Colors.black),
                new Icon(Icons.star, color: Colors.black),
                new Icon(Icons.star, color: Colors.black),
                new Icon(Icons.star, color: Colors.black),
              ],
            ),
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ), new Text('Hello World', style: new TextStyle(fontSize: 32.0))
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

class MyStateLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(

      appBar: new AppBar(title: new Text("Card List"),),
      backgroundColor: Colors.grey,
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("Hello Flutter", style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic),),
              icon: new Icon(Icons.shuffle, size: 30.0, color: Colors.blue,),
            ),
            new MyCard(title: new Text("Hi Yadu", style: new TextStyle(
                color: Colors.green,
                fontSize: 20.0,
                fontStyle: FontStyle.italic),),
              icon: new Icon(
                Icons.donut_large, size: 30.0, color: Colors.green,),),
            new MyCard(title: new Text("Welcome here", style: new TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontStyle: FontStyle.italic),),
              icon: new Icon(
                Icons.donut_small, size: 30.0, color: Colors.red,),)
          ],
        ),
      ),
    );
  }

}

class MyCard extends StatelessWidget {

  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.only(bottom: 10.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}

class AwsomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();

}

class AwesomeButtonState extends State<AwsomeButton> {

  int counter = 0;
  List<String> strings = ["Android", "is", "awsome"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Button"), backgroundColor: Colors.blue,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString),
              new RaisedButton(
                onPressed: onPressed,
                child: new Text("Press me"),
                color: Colors.blue,
              )
            ],),
        ),
      ),
    );
  }

}

class HomePage extends StatelessWidget {

  static Text child1 = new Text("Daily Entry");
  static Text child2 = new Text("Download");

  static var pad = const EdgeInsets.only(left: 8.0,right: 8.0,top: 20.0);
  static Padding padding1=new Padding(padding: pad, child: child1,);
  static Padding padding2=new Padding(padding: pad, child: child2,);

  static var children = [padding1, padding2];
  static ListView listview = new ListView(children: children);
  Drawer drawer = new Drawer(child: listview,);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text("Home Page"), backgroundColor: Colors.blue,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(
                Icons.favorite, color: Colors.red, size: 30.0,),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/SecondPage");
                  }),
              new Text("Home")
            ],
          ),
        ),
      ),
    );
  }

}

class SecondPage extends StatefulWidget {

  SecondPageState createState()=> new SecondPageState();

}

class SecondPageState extends State<SecondPage>{
  List data;
   getData() async{
    http.Response response = await http.get(Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      headers: {
      "Accept":"application/json"
      }
    );
    data = JSON.decode(response.body);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Page"), backgroundColor: Colors.blue,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(icon: new Icon(
                Icons.file_download, color: Colors.red, size: 60.0,),
                  onPressed: getData),
              new Text("Download")
            ],
          ),
        ),
      ),
    );
  }

}

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {

  String result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Input text"), backgroundColor: Colors.blue,),
      body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                      hintText: "Type in here!",
                      fillColor: Colors.greenAccent
                  ),
                  onSubmitted: (String str) {
                    setState(() {
                      result = str;
                    });
                  },
                ),
                new Text(result)
              ],
            ),
          )
      ),
    );
  }

}


class MyTab extends StatefulWidget{
  @override
  MyTabState createState()=>new MyTabState();

}

class MyTabState extends State<MyTab> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
   super.initState();
   controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Pages"),backgroundColor: Colors.blue,
        bottom: new TabBar(controller: controller,
            tabs: <Tab>[
          new Tab(icon: new Icon(Icons.arrow_forward),),
          new Tab(icon: new Icon(Icons.arrow_downward),),
          new Tab(icon: new Icon(Icons.arrow_back),),
        ]),
      ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new first.First(),
            new second.Second(),
            new third.Third()
          ])
        ,
    );
  }

}

