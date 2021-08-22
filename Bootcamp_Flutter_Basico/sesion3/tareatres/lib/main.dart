import 'package:flutter/material.dart';

import 'Cards.dart';
//import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tarjetas Ricky and Morty"),
          backgroundColor: Color(0xffCD60DA),
        ),
        body: Cards(),
      ),
    );
  }
}
