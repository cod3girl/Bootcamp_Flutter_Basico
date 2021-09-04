import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_class/CustomCard.dart';
import 'package:third_class/net.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {

  List personajes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: FutureBuilder(
          future: Net().getApi("https://rickandmortyapi.com/api/character/?page=1"),
          builder: (_, response){
            if (response.data != null){
              personajes = response.data["results"];
              return ListView(
                children: personajes.map( (item) => Customcard(ofData: item) ).toList(),
                  // return ListTile(
                  //   leading: Image.network(item["image"], width: 100, height: 100),
                  //   title: Text(item["name"]),
                  //   subtitle: Text("Especie: " + item["species"]),
                  //   trailing: Icon(
                  //     item["gender"] == "Female" 
                  //       ? Icons.female
                  //       : Icons.male
                  //   ),
                  //   onTap: (){
                  //     showDialog(context: context, 
                  //       builder: (_) => CupertinoAlertDialog(
                  //         title: Text( item["location"]["name"] ),
                  //       )
                  //     );
                  //   },
                  // );
              );
            } else {
              return Center(
                child: CircularProgressIndicator()
              );
            }
          },
        )
      ),
    );
  }
}
