import 'package:apptareados/pages/Inicio_Page.dart';
import 'package:flutter/material.dart';
import 'widgets/Principal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Principal(),
      ),
      routes: {
        "/PaginaInicio": (context) => IniciPage(),
      },
    );
  }
}
