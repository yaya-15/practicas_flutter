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
    return Scaffold(
        appBar: AppBar(
          title: Text("Mi - - App"),
        ),
        body: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    "https://scontent.fhmo3-1.fna.fbcdn.net/v/t1.6435-9/110202752_2363782250596048_4063900221828430567_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHpqzyPvx3RQ3KxQsu_35oEiKm_joH_BfSIqb-Ogf8F9LGZ2SUaHWTPvvcERGNFBAml7NB_zWhmN6Jbl9wGSgU0&_nc_ohc=VaG0niC_1IgAX911RHf&_nc_ht=scontent.fhmo3-1.fna&oh=00_AT9r7bBMEN-akL8-RPRsU3Ws5NZMGnoJLYvwHnpyaSAC8A&oe=62D714DB")),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    "https://scontent.fhmo3-1.fna.fbcdn.net/v/t1.6435-9/110202752_2363782250596048_4063900221828430567_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHpqzyPvx3RQ3KxQsu_35oEiKm_joH_BfSIqb-Ogf8F9LGZ2SUaHWTPvvcERGNFBAml7NB_zWhmN6Jbl9wGSgU0&_nc_ohc=VaG0niC_1IgAX911RHf&_nc_ht=scontent.fhmo3-1.fna&oh=00_AT9r7bBMEN-akL8-RPRsU3Ws5NZMGnoJLYvwHnpyaSAC8A&oe=62D714DB")),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    "https://scontent.fhmo3-1.fna.fbcdn.net/v/t1.6435-9/110202752_2363782250596048_4063900221828430567_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHpqzyPvx3RQ3KxQsu_35oEiKm_joH_BfSIqb-Ogf8F9LGZ2SUaHWTPvvcERGNFBAml7NB_zWhmN6Jbl9wGSgU0&_nc_ohc=VaG0niC_1IgAX911RHf&_nc_ht=scontent.fhmo3-1.fna&oh=00_AT9r7bBMEN-akL8-RPRsU3Ws5NZMGnoJLYvwHnpyaSAC8A&oe=62D714DB")),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Image.network(
                    "https://scontent.fhmo3-1.fna.fbcdn.net/v/t1.6435-9/110202752_2363782250596048_4063900221828430567_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHpqzyPvx3RQ3KxQsu_35oEiKm_joH_BfSIqb-Ogf8F9LGZ2SUaHWTPvvcERGNFBAml7NB_zWhmN6Jbl9wGSgU0&_nc_ohc=VaG0niC_1IgAX911RHf&_nc_ht=scontent.fhmo3-1.fna&oh=00_AT9r7bBMEN-akL8-RPRsU3Ws5NZMGnoJLYvwHnpyaSAC8A&oe=62D714DB")),
          ],
        ));
  }
}
