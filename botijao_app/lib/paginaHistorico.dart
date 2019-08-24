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
      body: Center(

        child: Container(
          width: 300,
          height: 100,
          child: Card(
    child: Center(
    child: Container(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width * 0.9,
        child: BezierChart(

          bezierLineChartScale: BezierLineChartScale.CUSTOM,
          bezierLineChartScale: BezierLineChartScale.CUSTOM,
          xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
          series: const [
            BezierLine(
              data: const [
                DataPoint<double>(value: 10, xAxis: 0),
                DataPoint<double>(value: 130, xAxis: 5),
                DataPoint<double>(value: 50, xAxis: 10),
                DataPoint<double>(value: 150, xAxis: 15),
                DataPoint<double>(value: 75, xAxis: 20),
                DataPoint<double>(value: 0, xAxis: 25),
                DataPoint<double>(value: 5, xAxis: 30),
                DataPoint<double>(value: 45, xAxis: 35),
              ],
            ),
          ],
          config: BezierChartConfig(

            verticalIndicatorStrokeWidth: 3.0,
            verticalIndicatorColor: Colors.black26,
            showVerticalIndicator: true,
            backgroundColor: Colors.red,
            snap: false,
          ),
        ),
      ),
    ),
    ),
        ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0, 5)
            ),
          ]),
        ),
      ),


       );
  }
}
