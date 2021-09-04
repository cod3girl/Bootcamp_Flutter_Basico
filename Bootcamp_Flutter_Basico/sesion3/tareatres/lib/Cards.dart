import 'package:flutter/material.dart';
import 'package:tareatres/Net.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List personajes = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: FutureBuilder(
            future: Net()
                .getApi("https://rickandmortyapi.com/api/character/?page=2"),
            builder: (_, response) {
              if (response.data != null) {
                personajes = response.data["results"];
                return ListView(
                  children: personajes.map((item) {
                    return Container(
                      padding: EdgeInsets.all(30.5),
                      width: double.infinity,
                      height: 420,
                      child: Card(
                        elevation: 10,
                        color: Color(0xffECC0F1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(9.5)),
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Image.network(
                                  item["image"],
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(item["name"]),
                              SizedBox(height: 10),
                              Text(item["status"]),
                              Padding(padding: EdgeInsets.all(9.5)),
                              Text(item["species"]),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
