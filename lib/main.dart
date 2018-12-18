import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Stateless Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Hello Flutter';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HelloWorld(title: title, world: 'world'),
    );
  }
}

// Stateful Widgate
class HelloWorld extends StatefulWidget {
  HelloWorld({Key key, this.title, this.world}) : super(key: key);
  final String title;
  final String world;

  @override
  _HelloWorld createState() => _HelloWorld();
}

// State Widget
class _HelloWorld extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(widget.title),
      )),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: 64.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Center(
              child: Text(
                widget.world,
                style: TextStyle(
                  fontSize: 64.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
