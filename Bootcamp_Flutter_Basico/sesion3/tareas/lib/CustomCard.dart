import 'package:flutter/material.dart';

class Customcard extends StatefulWidget {
  final Map ofData;
  Customcard( {@required this.ofData } );
  @override
  _CustomcardState createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {

  Map data;

  @override
  void initState() { 
    super.initState();
    data  = widget.ofData;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [  
          BoxShadow(  
            color: Colors.grey[400], 
            offset: Offset(0, 1),
            blurRadius: 3, 
          ) 
        ]
      ),
      child: LayoutBuilder(
        builder: (_, size) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( data["name"],
                  style: TextStyle( fontSize: 20 )
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(size.maxWidth * 0.02),
                child: Image.network( data["image"], fit: BoxFit.cover,
                  width: size.maxWidth / 2,
                  height: size.maxWidth / 2,
                )
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text( data["species"],
                      style: TextStyle( fontSize: 20 )
                    ),
                    Icon(
                      data["gender"] == "Female" 
                      ? Icons.female
                      : Icons.male
                    )
                  ],
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
