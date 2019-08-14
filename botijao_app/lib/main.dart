import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(home: Home()));
  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 60,top: 100),
      color: Colors.white,
      child: Column(


        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset("img/botijao_logo.jpg"),
             Expanded( child: Text("Nome do Aplicativo", style: TextStyle(color: Colors.blueAccent, fontSize: 40, fontFamily: "Arial"),))
          ],),
          TextField(decoration: InputDecoration(
            labelText: "Usuario"


          ),)



        ],

      ),
    );
  }
}
