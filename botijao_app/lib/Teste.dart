import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  @override
  _TesteState createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    bool _handleRadioValueChange1 = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),

      body:Container(
      padding: EdgeInsets.all(8.0),
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

    new Text(
    'Tara do Botijão:',
    style: new TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    new Radio(
    value: _handleRadioValueChange1,
    groupValue: "13kg",
    onChanged: (value){setState(() {
      _handleRadioValueChange1 = !_handleRadioValueChange1;
    });}
    ),
    new Text(
    '13Kg',
    style: new TextStyle(fontSize: 16.0),
    ),
    new Radio(
        value: _handleRadioValueChange1,
        groupValue: "13kg",
        onChanged: (value){setState(() {
          _handleRadioValueChange1 = !_handleRadioValueChange1;
        });}
    ),
    new Text(
    '14Kg',
    style: new TextStyle(
    fontSize: 16.0,
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
    style: new TextStyle(fontSize: 16.0),
    ),
    ],
    ),
    ])));

  }
}
