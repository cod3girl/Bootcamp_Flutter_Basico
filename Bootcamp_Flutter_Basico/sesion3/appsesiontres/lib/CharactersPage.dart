import 'package:flutter/material.dart';

import 'Net.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  List personajes = [];

  @override
  void initState() {
    super.initState();
    Net().getApi("").then((value) => personajes = value["results"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Personajes")),
        body: SizedBox(
          child: FutureBuilder(
              future: Net()
                  .getApi("https://rickandmortyapi.com/api/character/?page=1"),
              builder: (_, response) {
                personajes = response.data["results"];
                if (response.data != null) {
                  return ListView(
                    children: personajes.map((item) {
                      return ListTile(
                        leading: Image.network(
                          item["image"],
                          width: 100,
                          height: 100,
                        ),
                        title: Text(item["name"]),
                        subtitle: Text(item["species"]),
                        trailing: Icon(item["gender"] == "female"
                            ? Icons.female
                            : Icons.male),
                      );
                    }).toList(),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ));
  }
}
