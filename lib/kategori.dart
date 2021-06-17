import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riwayat_pembelian/dibatalkan.dart';
import 'package:riwayat_pembelian/diproses.dart';
import 'package:riwayat_pembelian/main.dart';
import 'package:riwayat_pembelian/selesai.dart';
import 'package:riwayat_pembelian/topup.dart';
import 'belanja.dart';

class kategori extends StatefulWidget {
  @override
  _kategoriState createState() => _kategoriState();
}

class _kategoriState extends State<kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Kategori'),
          ],
        ),
      ),
      body: new ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          new Card(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            new Center(
                                child: Container(
                              color: Colors.grey,
                              margin: EdgeInsets.only(left: 50),
                              height: 40,
                              width: 100,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new belanja()));
                                },
                                child: Text("Belanja",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            new Center(
                                child: Container(
                              margin: EdgeInsets.only(right: 50),
                              color: Colors.grey,
                              height: 40,
                              width: 140,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                onPressed: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new topup()));
                                },
                                child: Text("Topup Tagihan",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
                    new Center(
                        child: Container(
                      margin: EdgeInsets.only(right: 50),
                      color: Colors.grey,
                      height: 40,
                      width: 140,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new MyHomePage()));
                        },
                        child: Text(
                          "Lihat Semua",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ))
                  ],
                ),
                new Card(
                  child: Container(
                    color: Colors.grey,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(top: 15),
                    width: 2000,
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                new Card(
                  child: Column(children: [
                    Column(
                      children: [
                        Center(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 35, 0),
                          color: Colors.grey,
                          height: 40,
                          width: 140,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new diproses()));
                            },
                            child: Text(
                              "diproses",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ))
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 35, 0),
                              color: Colors.grey,
                              height: 40,
                              width: 140,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                      new selesai()));
                                },
                                child: Text(
                                  "selesai",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 35, 0),
                          color: Colors.grey,
                          height: 40,
                          width: 140,
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new dibatalkan()));
                            },
                            child: Text(
                              "dibatalkan",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ))
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
