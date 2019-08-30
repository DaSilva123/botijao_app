import 'package:botijao_app/paginaConfiguracao.dart';
import 'package:botijao_app/paginaInicial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:bezier_chart/bezier_chart.dart';

class paginaHistorico extends StatefulWidget {
  @override
  _paginaHistoricoState createState() => _paginaHistoricoState();
}

class _paginaHistoricoState extends State<paginaHistorico> {
  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("Historico"),


      ),
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
                    MaterialPageRoute(builder: (context) =>  paginaConfiguracao()));
              },

            ),
            Divider(
              color: Colors.black,
              height: 5.0,
            ),
          ],
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Divider(height: 30,),
              Container(
                  child: Container(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height / 2.35,
                    ),
                    child: Text(
                      "Gastos de hoje",
                      style: TextStyle(fontSize: 15),
                    ),

                  ),

              ),
              Container(

                height: 220,
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
              //////////////////////////////////////////////////////////////////
              Divider(height: 30,),
              Container(
                child: Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.55,
                  ),
                  child: Text(
                    "Gastos da semana",
                    style: TextStyle(fontSize: 15),
                  ),

                ),

              ),

              Container(

                height: 220,
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
                                                  1,
                                                  2,
                                                  3,
                                                  4,
                                                  5,
                                                  6,
                                                  7
                                                ],
                                                series: const [
                                                  BezierLine(
                                                    data: const [
                                                      DataPoint<double>(value: 100, xAxis: 1),
                                                      DataPoint<double>(value: 95, xAxis: 2),
                                                      DataPoint<double>(value: 85, xAxis: 3),
                                                      DataPoint<double>(value: 80, xAxis: 4),
                                                      DataPoint<double>(value: 71, xAxis: 5),
                                                      DataPoint<double>(value: 68, xAxis: 6),
                                                      DataPoint<double>(value: 65, xAxis: 7),
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
              Divider(height: 30,),
              Container(
                child: Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.55,
                  ),
                  child: Text(
                    "Gastos do més",
                    style: TextStyle(fontSize: 15),
                  ),

                ),

              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(

                  height: 220,
                  width: 700,
                  child: Card(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                                child: Card(
                                    child: Center(
                                      child: Container(
                                        padding: EdgeInsets.only(top: 15),
                                        width: 650,
                                        height: 180,
                                        child: Card(
                                          child: Center(
                                            child: Container(

                                              child: Container(
                                                color: Colors.red,
                                                height: MediaQuery.of(context).size.height / 1,
                                                width: MediaQuery.of(context).size.width * 5,
                                                child: BezierChart(

                                                  bezierChartScale: BezierChartScale.CUSTOM,
                                                  xAxisCustomValues: const [
                                                    1, 2, 3, 4, 5,
                                                    6, 7, 8, 9, 10,
                                                    11, 12, 13, 14, 15,
                                                    16, 17, 18, 19, 20,
                                                    21, 22, 23, 24, 25,
                                                    26,27,28,29,30
                                                  ],
                                                  series: const [
                                                    BezierLine(
                                                      data: const [
                                                        DataPoint<double>(value: 100, xAxis: 1),
                                                        DataPoint<double>(value: 95, xAxis: 2),
                                                        DataPoint<double>(value: 85, xAxis: 3),
                                                        DataPoint<double>(value: 80, xAxis: 4),
                                                        DataPoint<double>(value: 71, xAxis: 5),
                                                        DataPoint<double>(value: 68, xAxis: 6),
                                                        DataPoint<double>(value: 65, xAxis: 7),
                                                        DataPoint<double>(value: 60, xAxis: 8),
                                                        DataPoint<double>(value: 60, xAxis: 9),
                                                        DataPoint<double>(value: 55, xAxis: 10),
                                                        DataPoint<double>(value: 53, xAxis: 11),
                                                        DataPoint<double>(value: 52, xAxis: 12),
                                                        DataPoint<double>(value: 52, xAxis: 13),
                                                        DataPoint<double>(value: 49, xAxis: 14),
                                                        DataPoint<double>(value: 46, xAxis: 15),
                                                        DataPoint<double>(value: 43, xAxis: 16),
                                                        DataPoint<double>(value: 43, xAxis: 17),
                                                        DataPoint<double>(value: 43, xAxis: 18),
                                                        DataPoint<double>(value: 37, xAxis: 19),
                                                        DataPoint<double>(value: 35, xAxis: 20),
                                                        DataPoint<double>(value: 35, xAxis: 21),
                                                        DataPoint<double>(value: 30, xAxis: 22),
                                                        DataPoint<double>(value: 29, xAxis: 23),
                                                        DataPoint<double>(value: 28, xAxis: 24),
                                                        DataPoint<double>(value: 25, xAxis: 25),
                                                        DataPoint<double>(value: 23, xAxis: 26),
                                                        DataPoint<double>(value: 22, xAxis: 27),
                                                        DataPoint<double>(value: 20, xAxis: 28),
                                                        DataPoint<double>(value: 18, xAxis: 29),
                                                        DataPoint<double>(value: 18, xAxis: 30),

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

              ),
              Divider(height: 30,),
              Container(
                child: Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height / 2.55,
                  ),
                  child: Text(
                    "Gastos do més",
                    style: TextStyle(fontSize: 15),
                  ),

                ),

              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(

                  height: 220,
                  width: 700,
                  child: Card(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                                child: Card(
                                    child: Center(
                                      child: Container(
                                        padding: EdgeInsets.only(top: 15),
                                        width: 650,
                                        height: 180,
                                        child: Card(
                                          child: Center(
                                            child: Container(

                                              child: Container(
                                                color: Colors.red,
                                                height: MediaQuery.of(context).size.height / 1,
                                                width: MediaQuery.of(context).size.width * 5,
                                                child: BezierChart(

                                                  bezierChartScale: BezierChartScale.CUSTOM,
                                                  xAxisCustomValues: const [
                                                    1, 2, 3, 4, 5,
                                                    6, 7, 8, 9, 10,
                                                    11, 12, 13, 14, 15,
                                                    16, 17, 18, 19, 20,
                                                    21, 22, 23, 24, 25,
                                                    26,27,28,29,30
                                                  ],
                                                  series: const [
                                                    BezierLine(
                                                      data: const [
                                                        DataPoint<double>(value: 18, xAxis: 1),
                                                        DataPoint<double>(value: 15, xAxis: 2),
                                                        DataPoint<double>(value: 12, xAxis: 3),
                                                        DataPoint<double>(value: 10, xAxis: 4),
                                                        DataPoint<double>(value: 8, xAxis: 5),
                                                        DataPoint<double>(value: 4, xAxis: 6),
                                                        DataPoint<double>(value: 1, xAxis: 7),
                                                        DataPoint<double>(value: 1, xAxis: 8),
                                                        DataPoint<double>(value: 0, xAxis: 9),
                                                        DataPoint<double>(value: 0, xAxis: 10),
                                                        DataPoint<double>(value: 0, xAxis: 11),
                                                        DataPoint<double>(value: 0, xAxis: 12),
                                                        DataPoint<double>(value: 0, xAxis: 13),
                                                        DataPoint<double>(value: 0, xAxis: 14),
                                                        DataPoint<double>(value: 0, xAxis: 15),
                                                        DataPoint<double>(value: 0, xAxis: 16),
                                                        DataPoint<double>(value: 0, xAxis: 17,),
                                                        DataPoint<double>(value: 0, xAxis: 18),
                                                        DataPoint<double>(value: 0, xAxis: 19),
                                                        DataPoint<double>(value: 0, xAxis: 20),
                                                        DataPoint<double>(value: 0, xAxis: 21),
                                                        DataPoint<double>(value: 0, xAxis: 22),
                                                        DataPoint<double>(value: 0, xAxis: 23),
                                                        DataPoint<double>(value: 0, xAxis: 24),
                                                        DataPoint<double>(value: 0, xAxis: 25),
                                                        DataPoint<double>(value: 0, xAxis: 26),
                                                        DataPoint<double>(value: 0, xAxis: 27),
                                                        DataPoint<double>(value: 0, xAxis: 28),
                                                        DataPoint<double>(value: 0, xAxis: 29),
                                                        DataPoint<double>(value: 0, xAxis: 30),

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

              ),
              Divider(height: 30,)
            ],

          ),

        ),


      ),

       );
  }
}
