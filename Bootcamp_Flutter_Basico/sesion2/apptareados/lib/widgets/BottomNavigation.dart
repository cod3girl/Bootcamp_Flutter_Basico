import 'package:flutter/material.dart';

class BottomNavigationB extends StatefulWidget {
  @override
  _BottomNavigationBState createState() => _BottomNavigationBState();
}




class _BottomNavigationBState extends State<BottomNavigationB> {
  int indexCurrent = 0;
  optionTap(index) {
    setState(() {
      indexCurrent = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexCurrent,
          onTap: optionTap,
          items: [
            BottomNavigationBarItem(
              label: "Inicio",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: "Gustos",
              icon: Icon(
                Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              label: "Personalidad",
              icon: Icon(Icons.star),
            )
          ]),
    );
  }
}
