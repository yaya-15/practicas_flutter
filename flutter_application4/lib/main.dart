import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alerta',
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
  //Es para saber que se muestra en pantalla, en este caso "No acepto las cookies"
  bool _AcepSuscripcion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog- Practica 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                _AcepSuscripcion ? "Cancelar suscripcion" : 'Suscribete',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                _mostrarAlerta(context);
                print('Funciones');
              },
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              // Es una condicion ternaria
              _AcepSuscripcion
                  ? "Acepto la suscripcion"
                  : "No acepto lasuscripcion",
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      //barrierDismissible => Evita que la alerta se quite sin picar un boton para salir
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('COOKIES'),
        content: Text(_AcepSuscripcion
            ? "¿Estas seguro de cancelar la suscripcion?"
            : '¿Estas seguro que quieres suscribirte?'),
        actions: [
          TextButton(
              onPressed: () {
                print('No');
                //setState => Hace el cambio de estado de la pantalla o cambia la pantalla
                setState(() {
                  _AcepSuscripcion = false;
                });
                //Navigator.pop() => Es para poder quitar la capa/dialigo y regresar a la de abajo
                Navigator.pop(context);
              },
              child: Text(_AcepSuscripcion ? "Aceptar" : 'Cancelar')),
          TextButton(
              onPressed: () {
                print('Si');
                setState(() {
                  _AcepSuscripcion = true;
                });
                //Navigator.pop() => Es para poder quitar la capa/dialigo y regresar a la de abajo
                Navigator.pop(context);
              },
              child: Text(_AcepSuscripcion ? "Cancelar" : 'Aceptar'))
        ],
      ),
    );
  }
}
