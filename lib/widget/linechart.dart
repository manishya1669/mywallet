import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Charts extends StatefulWidget {
  late final String title;
  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  LineChartData? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 3,
          width: MediaQuery.of(context).size.width * 9,
        ),
      ),
    );
  }
}

// class Sales {
//   final String year;
//   final int sales;
//   Sales({required this.year, required this.sales});
// }
