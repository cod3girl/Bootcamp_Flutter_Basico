import 'package:appsesiontres/CharactersPage.dart';
import 'package:appsesiontres/store.dart';
import 'package:flutter/material.dart';
import 'package:stream_state/stream_state_builder.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff90D5E6),
        title: Text("Streame state"),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            StreamStateBuilder(
                streamState: count,
                builder: (context, item) {
                  var tempValue = "";

                  if (item == 10) {
                    tempValue = "Es igual a 10";
                  } else
                    tempValue = item.toString();
                  return Text(tempValue, style: TextStyle(fontSize: 60));
                }),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CharactersPage()));
              },
              color: Color(0xffD6A3DC),
              child: Text("Personajes", style: TextStyle(fontSize: 20)),
            ),
          ],
        )),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            count.state++;
            count.forceUpdate();
          },
          icon: Icon(
            Icons.add,
            color: Colors.black,
          )),
    );
  }
}
