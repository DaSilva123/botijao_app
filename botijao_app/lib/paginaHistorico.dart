import 'package:flutter/material.dart';

class paginaHistorico extends StatefulWidget {
  @override
  _paginaHistoricoState createState() => _paginaHistoricoState();
}

class _paginaHistoricoState extends State<paginaHistorico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("Historico"),


      ),
      body:  Container(
        child: Column(
        children: <Widget>[
          Container(
           child: Card(
             child: Center(
               child: Container(
                 child: Row(
                   children: <Widget>[

                     Image.asset('img/fogo.png',height: 200, width: 200,),

                     Column(

                       children: <Widget>[
                         Padding(padding:  EdgeInsets.only(
                           top: MediaQuery.of(context).size.height / 60,
                           left: MediaQuery.of(context).size.height / 10,
                         ),
                         ),
                         Text("Fogo Alto :", style: TextStyle(fontSize: 20, color: Colors.red)),
                         Text("16 H", style: TextStyle(fontSize: 20, color: Colors.blue,),textAlign: TextAlign.center,),
                         Divider(),
                         Text('Fogo Medio :', style: TextStyle(fontSize: 20,  color: Colors.orange)),
                         Text("16 H", style: TextStyle(fontSize: 20, color: Colors.blue),textAlign: TextAlign.center,),
                         Divider(),
                         Text("Fogo Baixo :", style: TextStyle(fontSize: 20, color: Colors.amber)),
                         Text("16 H", style: TextStyle(fontSize: 20, color: Colors.blue),textAlign: TextAlign.center,),
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
                blurRadius: 5.0,
                //offset: Offset(0, 5)
              ),


            ]),

            ),


        ]),
    ),

      );
  }
}
