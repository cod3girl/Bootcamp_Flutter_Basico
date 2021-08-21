import 'package:appsesiontres/store.dart';
import 'package:flutter/material.dart';
import 'package:stream_state/stream_state.dart';
import 'package:stream_state/stream_state_builder.dart';

void main() async {
  await initStreamStatePersist();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Streame state"),
          ),
          body: Center(
            child: Container(
                child: StreamStateBuilder(
                    streamState: count,
                    builder: (context, item) {
                      var tempValue = "";

                      if(item == 10){
                        tempValue = "Es igual a 10";
                      } else  tempValue = item.toString();
                      return Text(tempValue, style: TextStyle(fontSize: 60));
                    }            
                  )
                ),
          ),
          floatingActionButton: IconButton(
              onPressed: () {
                count.state++;
                count.forceUpdate();
              },
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ))),
    );
  }
}
