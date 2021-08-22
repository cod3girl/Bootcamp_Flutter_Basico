import 'package:flutter/material.dart';
import 'package:stream_state/stream_state.dart';
import 'package:third_class/Home.dart';
 
void main() async {
  await initStreamStatePersist();
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
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}