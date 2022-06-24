import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi-App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: cuerpo());
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/e0/32/83/e03283a698cdcc4b76f2cc665809a4ce.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoUsuario(),
            campoContrasena(),
            //SizedBox(height: 10,), Es una opcion para poner espacio entre los elementos
            botonEntrar()
          ]),
    ),
  );
}

Widget nombre() {
  return Text(
    "Sing in",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: TextField(
      decoration: InputDecoration(
          hintText: "User",
          fillColor: Colors.white, //Declaras que color quieres
          filled: true //Declaras que SI se pinte de ese color
          ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return FlatButton(
    color: Colors.blueGrey,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    onPressed: () {},
    child: Text("Enter", style: TextStyle(fontSize: 15, color: Colors.white)),
  );
}
