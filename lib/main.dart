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
      body: Container(
        // height: 1000,
        width: 500,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 100,
              // color: Colors.red,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 50,
                    )
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 100,
              // color: Colors.yellow,
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 50,
                    )
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              width: 100,
              // color: Colors.blue,
              decoration: const BoxDecoration(
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 50,
                  )
                ]
              ),
            ),
          ],
        ),

      ),
    );
  }
}
