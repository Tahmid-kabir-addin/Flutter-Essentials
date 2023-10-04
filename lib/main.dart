import 'package:flutter/material.dart';
import 'package:teest/pages/homepage.dart';
import 'package:teest/pages/login_page.dart';

void main() {
  //WidgetsApp //MaterialApp // CupertinoApp

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      home: LoginPage(),
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blue),
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}

