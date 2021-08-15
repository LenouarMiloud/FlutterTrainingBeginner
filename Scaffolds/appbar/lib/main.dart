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

  int _value = 0;
  String floatinValue = '';

  void _add()=> setState(()=> _value ++);
  void _remove()=> setState(()=> _value--);
  void _onClickd()=> setState(()=> floatinValue = new DateTime.now().toString());

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('this is App Bar'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          new IconButton(onPressed: _add, icon: new Icon(Icons.add)),
          new IconButton(onPressed: _remove, icon: new Icon(Icons.remove))
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onClickd,
        backgroundColor: Colors.green,
        mini: false,
        child: new Icon(Icons.timer),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("${_value}\n".toString(),style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 35.0)),
              new Text(floatinValue)
            ],
          ),
        ),
      ),
    );
  }
}