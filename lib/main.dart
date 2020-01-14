import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'I.G.C.',
      theme: ThemeData(
        primaryColor: Color(0xFF6200EE),
      ),
      home: MyHomePage(),
    );
  }
}
