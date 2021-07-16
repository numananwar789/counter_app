import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Number Count",
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey
      ),
      home: new NumberCountDemo(title: 'Counter App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NumberCountDemo extends StatefulWidget {
  NumberCountDemo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override

  _NumberCountDemoState createState() => new _NumberCountDemoState();
}

class _NumberCountDemoState extends State<NumberCountDemo> {
  @override
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(centerTitle:true,
          title: new Text("Number Counter",
            style: TextStyle(fontWeight: FontWeight.bold),)
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text('Press Add to Increment the Number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)
              ),

              new FloatingActionButton(
                onPressed: add,
                child: new Icon(Icons.add, color: Colors.black,),
                backgroundColor: Colors.white,),

              new Text('$_n',
                  style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),

              new FloatingActionButton(
                onPressed: minus,
                child: new Icon(
                    const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                    color: Colors.black),
                backgroundColor: Colors.white,),

              new Text('Press Minus to Decrement the Number',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)
              ),
            ],
          ),
        ),
      ),
    );
  }
}