import 'package:flutter/material.dart';
import 'package:flutter_application2/pages/pagina02.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegacion',
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: widget(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Home'),
              RaisedButton(
                child: const Text('Ir a la otra pagina'),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          // MaterialPageRoute = crea una ruta de una pagina de material
                          builder: (context) => Pagina02()))
                },
              ),
            ],
          ),
        ));
  }
}

Widget widget() {
  return const Text(
    'Navegacion',
  );
}
