import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsApp //MaterialApp // CupertinoApp

  runApp(MaterialApp(
      home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My App'),
      ),
      body: Container(
        child: Text('Hello World!'),
      ),
    );
  }
}
