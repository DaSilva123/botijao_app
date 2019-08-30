import 'package:bezier_chart/bezier_chart.dart';
import 'package:botijao_app/Teste.dart';
import 'package:botijao_app/paginaConfiguracao.dart';
import 'package:botijao_app/paginaHistorico.dart';
import 'package:flutter/material.dart';
import 'package:botijao_app/radial_progress.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pagina Inicial"),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paginaConfiguracao()));
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
        /////////////////////////////////////porcentagem///////////////////
        child: Container(

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 3.0,
                  ),
                  child: Text(
                    "Porcentagem do botijão",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  height: 250,
                  width: 400,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 200),
                  child: Card(
                      child: Center(
                          child: Container(
                    child: RadialProgress(),
                  ))),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4.0,
                        offset: Offset(0, 5)),
                  ]),
                ),
                /////////////////////////////////////porcentagem////////////////
                Divider(
                  height: 40,
                ),
                /////////////////////////////////////Estimativa////////////////
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.65,
                  ),
                  child: Text(
                    "Estimativa de tempo",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Card(
                    child: Center(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'img/fogo.png',
                              height: 200,
                              width: 200,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                    top:
                                        MediaQuery.of(context).size.height / 60,
                                    left:
                                        MediaQuery.of(context).size.height / 10,
                                  ),
                                ),
                                Text("Fogo Alto :",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(),
                                Text('Fogo Medio :',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.orange)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(),
                                Text("Fogo Baixo :",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.amber)),
                                Text(
                                  "16 H",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                  textAlign: TextAlign.center,
                                ),
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
                        blurRadius: 10.0,
                        offset: Offset(0, 5)),
                  ]),
                ),
                /////////////////////////////////////Estimativa////////////////
                Divider(height: 40,),
                /////////////////////////////////////Grafico////////////////
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.35,
                  ),
                  child: Text(
                    "Gastos de hoje",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(

                  height: 270,
                  width: 400,
                  child: Card(
                      child: Center(
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Card(
                                      child: Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 15),
                      width: 350,
                      height: 180,
                      child: Card(
                        child: Center(
                              child: Container(

                                child: Container(
                                  color: Colors.red,
                                  height: MediaQuery.of(context).size.height / 2,
                                  width: MediaQuery.of(context).size.width * 0.9,
                                  child: BezierChart(
                                    bezierChartScale: BezierChartScale.CUSTOM,
                                    xAxisCustomValues: const [
                                      0,
                                      4,
                                      8,
                                      12,
                                      16,
                                      20,
                                      24
                                    ],
                                    series: const [
                                      BezierLine(
                                        data: const [
                                          DataPoint<double>(value: 100, xAxis: 0),
                                          DataPoint<double>(value: 99, xAxis: 4),
                                          DataPoint<double>(value: 98, xAxis: 8),
                                          DataPoint<double>(value: 95, xAxis: 12),
                                          DataPoint<double>(value: 95, xAxis: 16),
                                          DataPoint<double>(value: 95, xAxis: 20),
                                          DataPoint<double>(value: 93, xAxis: 24),
                                        ],
                                      ),
                                    ],
                                    config: BezierChartConfig(
                                      verticalIndicatorStrokeWidth: 3.0,
                                      verticalIndicatorColor: Colors.black26,
                                      showVerticalIndicator: true,
                                      backgroundColor: Colors.blueAccent,
                                      snap: false,
                                    ),
                                  ),
                                ),
                              ),
                        ),
                      ),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                offset: Offset(10, 10)),
                      ]),
                    ),
                  ))),
                              Container(

                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height / 30,
                                    left: MediaQuery.of(context).size.height / 2.9

                                ),


                                child: RaisedButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => paginaHistorico()),
                                      );

                                    });
                                  },
                                  child: Text("+ Informações", style: TextStyle(color: Colors.white)),
                                  color: Colors.blueAccent,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0)),
                                ),
                              )
                            ],
                          ),

                      )),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                  ]),


                ),
                Divider()

              ],
            )),
      ),
    );
  }
}
