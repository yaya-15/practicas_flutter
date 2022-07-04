import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
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
  Empresa _facebook = new Empresa("Facebook", "Mark Zuckerberg", 50000000);
  Empresa _google = new Empresa("Google", "Larry Page", 80000000);
  Empresa _youtube = new Empresa("Facebook", "Mark Zuckerberg", 50000000);

  @override
  void initState() {
    super.initState();
    print(
      _facebook.nombre,
    );
    print(_facebook.ingresoAnual);
    print(
      _facebook.propietario,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Rest"),
      ),
      body: Center(
        child: Text(
          _facebook.nombre,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class Empresa {
  // Se les asiga una valor por defecto debido a que no se permite que esten en null
  //pero el valor cambiara a los valores dados que estan en las instancias.
  String nombre = "a";
  String propietario = "b";
  int ingresoAnual = 0;
  Empresa(
    String nombre,
    String propietario,
    int ingreso,
  ) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
