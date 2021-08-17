import 'package:flutter/material.dart';
import 'dart:async';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

enum Answers{YES,NO,Maybe}

class _State extends State<MyApp>{

  String _value='';

  void _setAnswer(String answer) => setState(()=> _value = answer);

  Future _askUser() async{
    switch(
    await showDialog(
        context: context,
        builder: (BuildContext context){
          return SimpleDialog(
            title: new Text('Do you Like Flutter'),
            children: <Widget>[
              new SimpleDialogOption(child: new Text('Yes'),onPressed: (){Navigator.pop(context, Answers.YES);},),
              new SimpleDialogOption(child: new Text('NO '),onPressed: (){Navigator.pop(context, Answers.NO);},),
              new SimpleDialogOption(child: new Text('Maybe '),onPressed: (){Navigator.pop(context, Answers.Maybe);},),
            ],
          );
        }
      )
    ){
      case Answers.YES:
        _setAnswer('Yes');
        break;
      case Answers.NO:
        _setAnswer('No');
        break;
      case Answers.Maybe:
        _setAnswer('Maybe');
        break;
    }
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
              new ElevatedButton(onPressed: _askUser, child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }
}
