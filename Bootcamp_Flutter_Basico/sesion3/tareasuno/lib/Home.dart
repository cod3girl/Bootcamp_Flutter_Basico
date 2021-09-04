import 'package:flutter/material.dart';
import 'package:stream_state/stream_state_builder.dart';
import 'package:third_class/store.dart';

import 'CharactersPage.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplicacion de contador'),
        ),
        body: Center(
          child: Container(
            height: 300,
            child: Column(
              children: [
                StreamStateBuilder(
                  streamState: count,
                  builder: (context, item){

                    var tempValue = "";

                    if (item == 10) {
                      tempValue = "Es igual a 10";
                    } else {
                      tempValue = item.toString();
                    }
                    return Text(tempValue, style: TextStyle(fontSize: 60));

                  }
                ),
                MaterialButton(
                  color: Colors.black,
                  child: Text("Ir a personajes", style: TextStyle(color: Colors.white)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CharactersPage()
                    ));
                  }
                )
              ],
            ),
          ),
        ),
        floatingActionButton: IconButton(
          onPressed: (){
            count.state++;
            // count.forceUpdate();
          }, 
          icon: Icon(Icons.add, color: Colors.black)
        ),
      );
  }
}