import 'package:botijao_app/Login.dart';
import 'package:botijao_app/paginaConfiguracao.dart';
import 'package:botijao_app/paginaHistorico.dart';
import 'package:botijao_app/paginaInicial.dart';
import 'package:flutter/material.dart';

class Revendedor extends StatefulWidget {
  @override
  _RevendedorState createState() => _RevendedorState();
   Revendedor({this.user});
  final String user;
}

class _RevendedorState extends State<Revendedor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Revendedor"),
      ),
      ////////////////////////////////////////menu/////////////////////////
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text(user),
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
      ////////////////////////////////////////menu/////////////////////////
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),


        child: Container(
          child: Wrap(
            direction: Axis.vertical,
            spacing: 15,


            children: <Widget>[


              Container(
                width: MediaQuery.of(context).size.width-40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 10))
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height / 30,
                      ),


                      child: Row(
                        children: <Widget>[
                          Text(
                            "Rua:",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text("Domingos", style: TextStyle(fontSize: 25))
                        ],
                      ),


                    ),
                    Container(

                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "N°:",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text("999", style: TextStyle(fontSize: 25))
                        ],
                      ),

                    ),


                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Bairro:",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Segundos", style: TextStyle(fontSize: 25))
                        ],
                      ),

                    ),

                    Container(

                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "CEP",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text("112223333", style: TextStyle(fontSize: 25))
                        ],
                      ),

                    ),
                ],),
              ),


              //////////////////////////////////////////////////////////////
              Container(
                width: MediaQuery.of(context).size.width-40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 10))
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery
                            .of(context)
                            .size
                            .height / 30,
                      ),

        child: Row(
          children: <Widget>[
            Text(
              "Revendedor:",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Queiroz", style: TextStyle(fontSize: 25))
          ],
        ),

      ),
      Container(

        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            Text(
              "Tel:",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 108,
            ),
            Text("88999998888", style: TextStyle(fontSize: 25))
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
                width: 70,
              ),
              Text("Revendedor@\nexemplo.com",
                  style: TextStyle(fontSize: 25))
            ],
          ),



        ),
      )],),
              ),



              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height / 10,
                    left: MediaQuery
                        .of(context)
                        .size
                        .height / 6.8
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
