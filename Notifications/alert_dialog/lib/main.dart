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

  Future _showAlert(BuildContext context, String message) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
          new TextButton(onPressed: () => Navigator.pop(context), child: new Text('Ok'))
          ],
          );
        },


    );
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
              new Text(""),
              new ElevatedButton(onPressed: () => _showAlert(context, 'This is an Alert Dialog'), child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }
}
