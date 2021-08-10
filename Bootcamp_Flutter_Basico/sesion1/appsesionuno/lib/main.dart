import 'package:flutter/material.dart';

main() => runApp(CodeGirlApp());

class CodeGirlApp extends StatefulWidget {
  @override
  _CodeGirlAppState createState() => _CodeGirlAppState();
}

class _CodeGirlAppState extends State<CodeGirlApp> {
  int imageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: MaterialButton(
            onPressed: () {
              setState(() {
                imageNumber++;
              });
            },
            color: Colors.purple,
            child: Icon(Icons.check, color: Colors.white)),
        body: Center(
            child: Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://picsum.photos/id/$imageNumber/300/300",
                  fit: BoxFit.fill,
                )
            )
          ),
      ),
    );
  }
}
