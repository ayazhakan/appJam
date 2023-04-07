import 'dart:async';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double startDegreeOffset = 180;

  @override
  Widget build(BuildContext context) {
    startDegreeOffsetTimer();
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Yuvarlak Grafik",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void startDegreeOffsetTimer() {
    Timer.periodic(Duration(milliseconds: 10000), (_) {
      setState(() {
        startDegreeOffset++;
      });
    });
  }


  AspectRatio buildGraph() {
    return AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 25,
                        title: '25%',
                        color: Colors.green,
                      ),
                      PieChartSectionData(
                        value: 75,
                        title: '75%',
                        color: Colors.red,
                      ),
                    ],
                    sectionsSpace: 2,
                    centerSpaceRadius: 40,
                    startDegreeOffset: startDegreeOffset,
                  ),
                ),
              );
  }
}
