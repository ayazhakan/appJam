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
  bool _switchValue = false;
  String _switchText = 'Switch is OFF';
  int isSelected = 0;
  List egitimList = ["Teknik", "Coursera", "Girişimcilik", "İngilizce"];
  int haberDuyuru = 0;

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
                Container(
                  height: 60,
                  child: ListView.builder(
                      itemCount: egitimList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = index;
                            });
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: isSelected == index
                                      ? Colors.red
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    egitimList[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: isSelected == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: buildGraph()),
                      Expanded(child: Text("Bitirme Yüzdesi"))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            haberDuyuru = 0;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: haberDuyuru == 0
                                ? Colors.greenAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Haberler",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            haberDuyuru = 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: haberDuyuru == 1
                                ? Colors.greenAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Duyurular",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
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

  PieChartData _pieChartData = PieChartData(
    sections: [
      PieChartSectionData(
        value: 25,
        title: '25%',
        color: Colors.red,
      ),
      PieChartSectionData(
        value: 75,
        title: '75%',
        color: Colors.green,
      ),
    ],
    sectionsSpace: 2,
    centerSpaceRadius: 32,
    startDegreeOffset: 180,
  );

  Duration _animationDuration = Duration(milliseconds: 5000);

  PieChart buildGraph() {
    return PieChart(
      swapAnimationDuration: _animationDuration,
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 25,
            title: '25%',
            color: Colors.red,
          ),
          PieChartSectionData(
            value: 75,
            title: '75%',
            color: Colors.green,
          ),
        ],
        sectionsSpace: 2,
        centerSpaceRadius: 32,
        startDegreeOffset: 180,
      ),
    );
  }

/*
  AspectRatio buildGraph() {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        swapAnimationDuration: Duration(milliseconds: 5000),
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 25,
              title: '25%',
              color: Colors.red,
            ),
            PieChartSectionData(
              value: 75,
              title: '75%',
              color: Colors.green,
            ),
          ],
          sectionsSpace: 2,
          centerSpaceRadius: 32,
          startDegreeOffset: 180,
        ),
      ),
    );
  }*/
}
