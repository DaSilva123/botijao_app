import 'package:botijao_app/paginaHistorico.dart';
import 'package:botijao_app/paginaInicial.dart';
import 'package:flutter/material.dart';

class paginaConfiguracao extends StatefulWidget {
  @override
  _paginaConfiguracaoState createState() => _paginaConfiguracaoState();
}

class _paginaConfiguracaoState extends State<paginaConfiguracao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Configuração"),
      ),
      ////////////////////////////////////////menu/////////////////////////
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
              title: Text("Pagina Inicial"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaginaInicial()));
              },
            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => paginaConfiguracao()));
              },
            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(

            children: <Widget>[

              Container(
            padding: EdgeInsets.only(top: 10),
              child: Row(
                    children: <Widget>[
                      Text(
                        "Token:",
                        style: TextStyle(fontSize: 29),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("098787X877C", style: TextStyle(fontSize: 29))
                    ],
                  ),


              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 100,),
                height: 70,
                child: Card(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Nome:",
                              style: TextStyle(fontSize: 29),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Usuario", style: TextStyle(fontSize: 29))
                          ],
                        ),

                      ),
                    )
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(0, 5)),
                ]),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 100,),
                height: 70,
                child: Card(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "E-mail:",
                              style: TextStyle(fontSize: 29),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Usuario@exemplo.com", style: TextStyle(fontSize: 29))
                          ],
                        ),

                      ),
                    )
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(0, 5)),
                ]),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 100,),
                height: 70,
                child: Card(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Token:",
                              style: TextStyle(fontSize: 29),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("098787X877C", style: TextStyle(fontSize: 29))
                          ],
                        ),

                      ),
                    )
                ),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(0, 5)),
                ]),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
