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
  String _persistenceValue = '';
  late List<BottomNavigationBarItem> _items;
  String _valueBNavigation = '';
  int _index = 0;

  void _onClick(String value) => setState(() => _persistenceValue = value);
  void _add()=> setState(()=> _value ++);
  void _remove()=> setState(()=> _value--);
  void _onClickd()=> setState(()=> floatinValue = new DateTime.now().toString());

  @override
  void initState() {
    _items = [];
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('People')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend), title: new Text('Weekend')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text('Message')));
  }

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
      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(Icons.timer), onPressed: () => _onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.people), onPressed: () => _onClick('Button 2')),
        new IconButton(icon: new Icon(Icons.map), onPressed: () => _onClick('Button 3')),
      ],
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
              new Text("${floatinValue} \n"),
              new Text(_valueBNavigation)
            ],
          ),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _items,
        fixedColor: Colors.lightGreen,
        currentIndex: _index,
        onTap: (int item) {
          setState((){
            _index = item;
            _valueBNavigation = "Current value is: ${_index.toString()}";
          });
        },

      ),
    );
  }
}
