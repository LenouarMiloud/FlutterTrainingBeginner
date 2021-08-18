import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Bar Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(18.5),
                  child: new Column(
                    children: <Widget> [
                      new Text('Hello Miloud'),
                      new Text('How Are You Doing ?')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(18.5),
                  child: new Column(
                    children: <Widget> [
                      new Text('Hello Miloud'),
                      new Text('How Are You Doing ?')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(18.5),
                  child: new Column(
                    children: <Widget> [
                      new Text('Hello Miloud'),
                      new Text('How Are You Doing ?')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
