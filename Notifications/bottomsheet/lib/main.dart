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

  void _showBottom(){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return Container(
            padding: new EdgeInsets.all(17.2),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                new Text('Your Notification Here\t',style: new TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 12.0),),
                new ElevatedButton(onPressed: ()=> Navigator.pop(context), child: new Text('Close'))
              ],
            ),
          );
        }
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
              new Text("Click button to get bottom notification \n"),
              new ElevatedButton(onPressed: _showBottom, child: new Text('Click Me'))
            ],
          ),
        ),
      ),
    );
  }
}
