import 'package:botijao_app/Login.dart';
import 'package:botijao_app/paginaHistorico.dart';
import 'package:botijao_app/paginaInicial.dart';
import 'package:botijao_app/revendedor.dart';
import 'package:flutter/material.dart';


class paginaConfiguracao extends StatefulWidget {
  @override
  _paginaConfiguracaoState createState() => _paginaConfiguracaoState();
}

class _paginaConfiguracaoState extends State<paginaConfiguracao> {
  @override
  Widget build(BuildContext context) {
    bool _handleRadioValueChange1 = false;
    bool _handleRadioValueChange2 = false;
    bool _handleRadioValueChange3 = false;
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
            ListTile(
              title: Text("Revendedor"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Revendedor()));
              },
            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
            ListTile(
              title: Text("Sair"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage()));
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
          padding: EdgeInsets.all(20),
          child: Wrap(
            direction: Axis.vertical,
            spacing: 15,


            children: <Widget>[

              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 30,
                ),


              child: Row(
                    children: <Widget>[
                      Text(
                        "Token:",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("098787X877C", style: TextStyle(fontSize: 25))
                    ],
                  ),


              ),
              Container(

                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Nome:",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Usuario", style: TextStyle(fontSize: 25))
                          ],
                        ),

                      ),


                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "E-mail:",
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Usuario@exemplo\n.com", style: TextStyle(fontSize: 25))
                            ],
                          ),

                        ),
                      ),

              Container(

                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Tel:",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Text("88999998888", style: TextStyle(fontSize: 25))
                          ],
                        ),

                      ),
              Container(

                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Tel2:",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text("88999998888", style: TextStyle(fontSize: 25))
                  ],
                ),

              ),

              Container(
                  padding: EdgeInsets.all(8.0),
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        new Text(
                          'Tara do Botijão:',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                                value: _handleRadioValueChange2,
                                groupValue: "13kg",
                                onChanged: (value){setState(() {
                                  _handleRadioValueChange2 = !_handleRadioValueChange2;
                                });}
                            ),
                            new Text(
                              '13Kg',
                              style: new TextStyle(fontSize: 20.0),
                            ),
                            new Radio(
                                value: _handleRadioValueChange3,
                                groupValue: "13kg",
                                onChanged: (value){setState(() {
                                  _handleRadioValueChange3 = !_handleRadioValueChange3;
                                });}
                            ),
                            new Text(
                              '14Kg',
                              style: new TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            new Radio(
                                value: _handleRadioValueChange1,
                                groupValue: "13kg",
                                onChanged: (value){setState(() {
                                  _handleRadioValueChange1 = !_handleRadioValueChange1;
                                });}
                            ),
                            new Text(
                              '15Kg',
                              style: new TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ])),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 10,
                  left: MediaQuery.of(context).size.height/ 6.9
                ),

                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paginaHistorico()),
                      );
                    });
                  },
                  child: Text("Alterar Dados",
                      style: TextStyle(color: Colors.white)),
                  color: Colors.blueAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
