import 'dart:convert';

import 'package:botijao_app/Cadastro.dart';
import 'package:botijao_app/paginaConfiguracao.dart';
import 'package:botijao_app/paginaHistorico.dart';
import 'package:botijao_app/paginaInicial.dart';
import 'package:botijao_app/revendedor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

String user='';

class Loginapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/paginaInicial': (BuildContext context) => PaginaInicial(user: user,),
        '/paginaConfiguracao': (BuildContext context) => paginaConfiguracao(user: user,),
        '/paginaHistorico': (BuildContext context) => paginaHistorico(user: user,),
        '/revendedor': (BuildContext context) => Revendedor(user: user,),
        
      },
       );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usuario = TextEditingController();
  TextEditingController senha = TextEditingController();
  String msg='';
Future<List> _login() async{
  final Response = await http.post('http://192.168.42.66/botijao/login.php',
  body: {
    "nome": usuario.text,
    "senha": senha.text,
  });
  var datauser = json.decode(Response.body);

  if(datauser.length==0){
    setState(() {
      msg="Falha no login \nUsuario ou senha incorredos";
    });
  }else{
    setState(() {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context)=> PaginaInicial())
      );

    });

    setState(() {
      user = datauser[0]['nome'];
    });
  }
  return datauser;
}
  

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
                  controller: usuario,
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
                  controller: senha,
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

              Container(
                width: 150,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 40),
                child: RaisedButton(
                  onPressed: () {
                  _login();
                  },
                   child: Text("Login", style: TextStyle(color: Colors.white)),
                  color: Colors.blueAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
              Center(child: Text(msg,style: TextStyle(fontSize: 20.0, color: Colors.red),)),
              Container(
                padding: EdgeInsets.only(bottom: 0.0, top: 90.0),
                child: Text("Ainda não tem conta?",
                    style: TextStyle(color: Colors.black)),
              ),
              Container(
                width: 150,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 130),
                child: RaisedButton.icon(onPressed: (){
                  setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CadastroPage()),
                      );

                    });
                },
                label: Text('Cadastrar', style: TextStyle(color: Colors.blueAccent)),
                 icon: Icon(Icons.person_add, color: Colors.blueAccent), 
                 color: Colors.white,
                  shape: new RoundedRectangleBorder(
                   borderRadius: new BorderRadius.circular(30.0))
                 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
