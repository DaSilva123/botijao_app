import 'package:flutter/material.dart';
import 'package:botijao_app/Login.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 20, 20, 20),

            child: Column(
              children: <Widget>[
               
                Container(
                   padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 200,
                      left: MediaQuery.of(context).size.height / 130),
                      
                    child: Image.asset('img/botijao_logo.jpg',height: 100,width: 100,)
                    
                  ),
                  
                  Container(
                    padding: EdgeInsets.only(
                      top: 8
                    ),
                    child: Text('Cadastro', 
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),),
                  ),
                  Container(
                   
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8),
                      child: TextField(
                         decoration: InputDecoration(
                           labelStyle: TextStyle(color: Colors.black),
                           border: UnderlineInputBorder(),
                           labelText: "Nome",
                            icon: Icon(Icons.person),
                         ),
                       ),
                   ),
                   Container(
                   
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30),
                      child: TextField(
                         decoration: InputDecoration(
                           labelStyle: TextStyle(color: Colors.black),
                           border: UnderlineInputBorder(),
                           labelText: "Email",
                            icon: Icon(Icons.email),
                         ),
                       ),
                   ),
                   Container(
                   
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30),
                      child: TextField(
                         decoration: InputDecoration(
                           labelStyle: TextStyle(color: Colors.black),
                           border: UnderlineInputBorder(),
                           labelText: "Senha",
                            icon: Icon(Icons.vpn_key),
                         ),
                       ),
                   ),
                   Container(
                width: 150,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 10),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );

                    });
                  },
                  child: Text("Cadastrar", style: TextStyle(color: Colors.white)),
                  color: Colors.blueAccent,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
              ],
            ),

          ),
          
        ),
       
      ),
      
    );
  }
}