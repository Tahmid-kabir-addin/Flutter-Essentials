import 'package:flutter/material.dart';

void main() {
  //WidgetsApp //MaterialApp // CupertinoApp

  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blue),
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
        title: const Text(
          'My Apps',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 100,
          width: 100,
          clipBehavior: Clip.antiAlias,

          // color: Colors.red,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Colors.red,
              Colors.blueGrey,
            ]),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 50,
              )
            ],
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Hello World!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
