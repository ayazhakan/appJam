import 'dart:async';
import 'package:akademi_mobil/constants/color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants/haber_duyuru_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double startDegreeOffset = 180;
  int isSelected = 0;
  List egitimList = ["Teknik", "Coursera", "Girişimcilik", "İngilizce"];
  int haberDuyuru = 0;
  List<double> bitirmeYuzdesiList = [68, 46, 32, 93];

  @override
  Widget build(BuildContext context) {
    startDegreeOffsetTimer();
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        backgroundColor: kAppBarColor,
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
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isSelected == index
                                        ? yesil
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
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nisan",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "${egitimList[isSelected]} Eğitimi Tamamlama Oranı",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Spacer(),
                          Text("Son Gün: 30 Nisan"),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ))
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
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
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
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
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
                buildHaberler(0),
                buildHaberler(1),
                buildHaberler(2),
                buildHaberler(3),
                buildHaberler(4),
                buildHaberler(5),
                buildHaberler(6),
                buildHaberler(7),
                buildHaberler(8),
                buildHaberler(9),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildHaberler(int index) {
    return Container(
      height: 200,
      child: Card(
        elevation: 4.0,
        child: Row(
          children: [
            Image.network(
              haberList[index].imageUrl,
              width: 150,
              height: 150,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
                child: Text(
              haberList[index].aciklama,
              textAlign: TextAlign.justify,
            )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  void startDegreeOffsetTimer() {
    Timer.periodic(Duration(milliseconds: 500), (_) {
      setState(() {
        startDegreeOffset++;
      });
    });
  }

  final Duration _animationDuration = const Duration(milliseconds: 500);

  PieChart buildGraph() {
    return PieChart(
      swapAnimationDuration: _animationDuration,
      PieChartData(
        sections: [
          PieChartSectionData(
            value: (100 - bitirmeYuzdesiList[isSelected]),
            title: (100 - bitirmeYuzdesiList[isSelected]).toString(),
            color: kirmizi,
          ),
          PieChartSectionData(
            value: bitirmeYuzdesiList[isSelected],
            title: bitirmeYuzdesiList[isSelected].toString(),
            color: yesil,
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
