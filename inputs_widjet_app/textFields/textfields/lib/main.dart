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

  String _value="";

  void _onChange(String value){
    setState(() => _value = 'Change : ${value} ');
  }

  void _onSubmit(String value){
    setState(() => _value = 'Submit : ${value} ');
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
              new TextField(
                decoration: new InputDecoration(
                    labelText: "label of input",
                    hintText: "hint text here",
                    icon: new Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: false,
                keyboardType: TextInputType.number,
              )
            ],
          ),
        ),
      ),
    );
  }
}
