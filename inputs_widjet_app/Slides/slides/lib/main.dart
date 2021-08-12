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

  double _value1 = 0.0;

  void _onChange(double? value) => setState(()=> _value1 = value!);

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
              new Text(" Slide Widjet \n "),
              new Text('Value : ${(_value1 * 100).round()}'),
              new Slider(
                  value: _value1,
                  onChanged: _onChange
              ),
            ],
          ),
        ),
      ),
    );
  }
}
