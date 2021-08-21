import 'package:apptareados/widgets/Boton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 450,
        padding: EdgeInsets.all(30.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              style: TextStyle(fontSize: 20),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'escribir',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: 'Contraseña'),
            ),
            SizedBox(height: 30),
            Button(
              textButton: "Ingresar",
              colorFondo: Color(0xffECC0F1),
              action: () {
                Navigator.pushNamed(context, "/PaginaInicio");
              },
            ),
          ],
        ),
      ),
    );
  }
}
