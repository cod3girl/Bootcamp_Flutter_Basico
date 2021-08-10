import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(TareaCard());
}

class TareaCard extends StatefulWidget {
  TareaCard({Key? key}) : super(key: key);

  @override
  _TareaCardState createState() => _TareaCardState();
}

class _TareaCardState extends State<TareaCard> {
  int imageNumber = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xff75CCE8),
            body: Center(
              child: Container(
                padding: EdgeInsets.all(30.5),
                width: 400,
                height: 450,
                child: Card(
                  color: Color(0xffECC0F1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(9.5)),
                        Text("Bootcamp Code Girl",
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepPurpleAccent)),
                        SizedBox(height: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Image(
                              image: NetworkImage(
                                'https://picsum.photos/id/$imageNumber/300/300',
                              ),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("@Lesly.Samaritano",
                            style: TextStyle(
                                fontSize: 20, color: Colors.purpleAccent)),
                        SizedBox(height: 15),
                        MaterialButton(
                          onPressed: () => {
                            setState(() {
                              imageNumber++;
                            })
                          },
                          child: Text('Siguiente',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                          color: Colors.deepPurpleAccent,
                          padding: EdgeInsets.all(8.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
