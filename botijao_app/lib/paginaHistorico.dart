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

    );
  }
}
