import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terminos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              'Terminos y condiciones',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones Para usar esa aplicacion es necesario que acepetes los terminos y condiciones',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 10),
            RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Acepto todo',
                      style: TextStyle(fontSize: 15),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onPressed: () => {Navigator.pop(context)})
          ],
        ),
      ),
    );
  }
}
