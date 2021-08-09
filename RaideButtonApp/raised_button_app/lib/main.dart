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

  String _value = "LENOUAR Miloud";
  int _number = 0;

  void _onPressed(String value){
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  void _add(){
    setState(() {
      _number++;
    });
  }

  void _subtruct(){
    setState(() {
      _number--;
    });
  }

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
              new Text(_value),
              new RaisedButton(onPressed:()=> _onPressed("My Name is") ,child: new Text("Click Me")),
              new FlatButton(onPressed:()=> _onPressed("My Name is") ,child: new Text("Click Me")),
              new Text("Number : ${_number}"),
              new IconButton(onPressed: _add, icon: new Icon(Icons.add)),
              new IconButton(onPressed: _subtruct, icon: new Icon(Icons.remove))
            ],
          ),
        ),
      ),
    );
  }
}
