import 'package:botijao_app/paginaHistorico.dart';
import 'package:flutter/material.dart';
import 'package:botijao_app/radial_progress.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Pagina Inicial"),
        ),
        drawer: new Drawer(
            child: ListView(
                children: <Widget>[
            new UserAccountsDrawerHeader(
            accountName: new Text('Mateus'),
            accountEmail: new Text('ExemploEmail@gmail.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
            )),
        ListTile(
          title: Text("Historico"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => paginaHistorico())
            );
          },

        ),
        Divider( color: Colors.black,
        height: 5.0,
        ),
        ListTile(
        title: Text("Configurações"),
        onTap: () {
           Navigator.push(context,
           MaterialPageRoute(builder: (context) => paginaHistorico())
    );
    },

    )

    ],
    ),
    ),
      body: Container(

        child: Column(

          children: <Widget>[
            Padding(padding:  EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 15,
          left: MediaQuery.of(context).size.height / 1),
            ),

            RadialProgress(),
          ],
        )

      ),
    );
  }
}
