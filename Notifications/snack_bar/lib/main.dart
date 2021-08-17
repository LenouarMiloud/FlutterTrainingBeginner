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

  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

  void _showBar(){
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
              new Text("Snack Bar \n"),
              new ElevatedButton(onPressed: _showBar, child: new Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}
