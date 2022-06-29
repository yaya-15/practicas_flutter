import 'package:flutter/material.dart';
import 'package:flutter_application3/pages/history.dart';
import 'package:flutter_application3/pages/orders.dart';
import 'package:flutter_application3/pages/users.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //_pagActual => Es declara con valor para que no marque error pero adelante se cambia el valor
  int _pagActual = 1;
  //List<Widget> => se especifica que es una lista de Widgets y se importan para tener mas escalabilidad que con el otro modelo de 2 opciones
  List<Widget> _opciones = [cuenta(), pedidosRes(), historial()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Desaparece la linea roja de prueva (debug)
      title: 'Prueba1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Prueba 1'),
          backgroundColor: Colors.green,
        ),
        body: _opciones[_pagActual],
        bottomNavigationBar: BottomNavigationBar(
          //onTap => Es para que cambie el estado, se quede seleccionado el tap
          onTap: (index) {
            setState(() {
              _pagActual = index;
            });
          },
          currentIndex: _pagActual, //Es la opcion que se selecciona por defecto
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.purple[200],
                ),
                label: 'Home',
                backgroundColor: Colors.pink),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.article_sharp,
                  color: Colors.amber,
                ),
                label: 'Persona'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time,
                  color: Colors.pink[200],
                ),
                label: 'Cuenta')
          ],
        ),
      ),
    );
  }
}
