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
                accountName: new Text('Usuario'),
                accountEmail: new Text('ExemploEmail@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
                )),
            ListTile(
              title: Text("Historico"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paginaHistorico()));
              },
            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              title: Text("Configurações"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paginaHistorico()));
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: 3800,
            height: 2000,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.65,
                  ),
                  child: Text("Estimativa de tempo",style: TextStyle(fontSize: 15),),
                ),
                Container(
                  height: 250,
                  width: 400,
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 200),
                  child: Card(
                      child: Center(
                        child: Container(
                          child:  RadialProgress(),
                        )
                      )
                  ),
                  decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                color: Colors.black12,
                    blurRadius: 4.0,
                  offset: Offset(0, 5)
                    ),
              ]),
                ),

                Divider(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.65,
                  ),
                  child: Text("Estimativa de tempo",style: TextStyle(fontSize: 15),),
                ),

                Container(
                  height: 200,
                  width: 400,
                  child: Card(
                    child: Center(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'img/fogo.png',
                              height: 200,
                              width: 200,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.height / 60,
                                    left:
                                        MediaQuery.of(context).size.height / 10,
                                  ),
                                ),
                                Text("Fogo Alto :",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(),
                                Text('Fogo Medio :',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.orange)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(),
                                Text("Fogo Baixo :",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.amber)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                      offset: Offset(0, 5)
                        ),
                  ]),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Card(
                      child: Center(
                        child: Container(
                          
                        )
                      )
                  )

                )
              ],
            )),
      ),
    );
  }
}
