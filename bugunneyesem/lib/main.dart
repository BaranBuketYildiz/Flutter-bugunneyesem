import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BugunNeYesem());
}

class BugunNeYesem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffC8E6C9),
        appBar: AppBar(
          backgroundColor: Color(0xff388E3C),
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM ?',
            style: TextStyle(color: Color(0xff7212121)),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> corbaAdlari = [
    "Tarhana",
    "Mercimek",
    "Yogurtlu Çorba",
    "DüğünÇorbası",
    "TavukSuyu"
  ];

  List<String> yemekAdlari = [
    "kıymalı yufka sarma",
    "patetsli kıyma",
    "kabak dolması",
    "piyaz",
    "hünkar beğendi"
  ];
  List<String> tatliAdlari = [
    "sütlü irmik",
    "bardak tatlı",
    "lokum tatlı",
    "kremalı bardak tatlı",
    "chesscake"
  ];
  void YemeklerButonu() {
    corbaNo = Random().nextInt(5) + 1;
    yemekNo = Random().nextInt(5) + 1;
    tatliNo = Random().nextInt(5) + 1;
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff388E3C),
                ),
                onPressed: () {
                  setState(() {
                    YemeklerButonu();
                  });

                  print('$corbaNo');
                },
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff388E3C),
                ),
                onPressed: () {
                  setState(() {
                    YemeklerButonu();
                  });

                  print('$yemekNo');
                },
                child: Image.asset('assets/yemep_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xff388E3C),
                ),
                onPressed: () {
                  setState(() {
                    YemeklerButonu();
                  });

                  print('$tatliNo');
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
