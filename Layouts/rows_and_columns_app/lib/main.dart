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

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

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
              new Text("Login",style: new TextStyle(fontSize: 25.5),),
              new Row(
                children:<Widget>[
                  new Text('Username  :'),
                  new Expanded(child: new TextField(controller: _user,))
                ],
              ),
              new Row(
                children:<Widget>[
                  new Text('Password  :'),
                  new Expanded(child: new TextField(controller: _pass,obscureText: true,))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
