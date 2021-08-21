import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String textButton;
  final Color colorFondo;
  final Function action;

  Button({ 
    @required this.textButton, 
    this.action,
    this.colorFondo = Colors.black});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.action,
      child: Text(widget.textButton,
          style: TextStyle(fontSize: 20, color: Colors.black)
      ),
      color: widget.colorFondo,
      padding: EdgeInsets.all(10.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
