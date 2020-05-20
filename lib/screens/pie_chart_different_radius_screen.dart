import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartDifferentRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pie Chart Different Radius')),
        body: Stack(children: <Widget>[
          Center(
            child: PieChart(PieChartData(
                centerSpaceRadius: 0,
//              centerSpaceColor: Colors.red,
                sectionsSpace: 0,
                sections: [
                  PieChartSectionData(
                    color: const Color(0xff0293ee),
                    value: 40,
//                  title: '40%',
                    radius: 80,
                    titleStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: Colors.orange,
                    value: 60,
//                  title: '30%',
                    radius: 90,
                    titleStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    value: 60,
//                  title: '30%',
                    radius: 100,
                    titleStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: 60,
//                  title: '30%',
                    radius: 50,
                    titleStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xffffffff)),
                  )
                ])),
          ),
        ]));
  }
}
