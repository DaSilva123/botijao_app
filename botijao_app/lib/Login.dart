import 'package:botijao_app/paginaInicial.dart';
import 'package:flutter/material.dart';

class Loginapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8,
                      left: MediaQuery.of(context).size.height / 50),
                child: Image.asset('img/botijao_logo.jpg'),
                  ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                    left: MediaQuery.of(context).size.height / 50),
                 child: Text("OLHA O GÁS", style: TextStyle(color: Colors.blue,fontSize: 25,)),
                 ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8),
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    border: UnderlineInputBorder(),
                    labelText: "Usuario",
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: UnderlineInputBorder(),
                      labelText: "Senha",
                      icon: Icon(Icons.vpn_key)),
                ),
              ),
              Divider(),
              Divider(),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 40),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaginaInicial()),
                      );

                    });
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                  color: Colors.blueAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 0.0, top: 60.0),
                child: Text("Ainda não tem conta?",
                    style: TextStyle(color: Colors.black)),
              ),
              Text("Cadastrar", style: TextStyle(color: Colors.blueAccent)),
            ],
          ),
        ),
      ),
    );
  }
}
