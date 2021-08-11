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

  bool _value1 = false;
  bool _value2 = false;

  void _value1Change(bool value) => setState(()=> _value1 = value);
  void _value2Change(bool value) => setState(()=> _value2 = value);

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
              new Checkbox(value: _value1, onChanged: _value1Change),
              new Checkbox(value: _value2, onChanged: _value2Change),
            ],
          ),
        ),
      ),
    );
  }
}
