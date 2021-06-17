import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'detailHalaman.dart';
import 'kategori.dart';

class selesai extends StatefulWidget {
  @override
  _selesaiState createState() => _selesaiState();
}

class _selesaiState extends State<selesai> {
  Future<List> ambilData() async {
    var data =
        await http.get(Uri.parse("http://192.168.43.191/riwayat/selesai.php"));
    var jsonData = json.decode(data.body);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: new Icon(Icons.arrow_back_ios),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Riwayat Pembelian'),
            new IconButton(
              icon: new Icon(Icons.toc),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new kategori()));
              },
            )
          ],
        ),
      ),
      body: Container(
        child: FutureBuilder(
            future: ambilData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text("Loading..."),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Container(
                      padding: const EdgeInsets.all(10.0),
                      child: new GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new detailHalaman(
                                      list: snapshot.data,
                                      index: index,
                                    ))),
                        child: new Card(
                            child: new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Icon(Icons.store),
                                  Padding(padding: EdgeInsets.only(right: 10)),
                                  Text(snapshot.data[index]['toko']),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      child: AspectRatio(
                                        aspectRatio: 0.78,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white60,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: new Image.network(
                                              snapshot.data[index]['gambar']),
                                        ),
                                      )),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.05),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 15)),
                                      Text(
                                        snapshot.data[index]['nama'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                        maxLines: 2,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.0)),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: 260,
                                                child: Text.rich(TextSpan(
                                                    text: snapshot.data[index]
                                                        ['variasi'],
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.black54,
                                                    ))),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Text.rich(TextSpan(
                                                  text: "x" +
                                                      snapshot.data[index]
                                                          ['t_pesan'],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black54,
                                                  ))),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 15)),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 200),
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text.rich(TextSpan(
                                                    text: "Rp" +
                                                        snapshot.data[index]
                                                            ['harga'],
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black54,
                                                    ),
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 2,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          snapshot.data[index]['jumlah'] +
                                              " produk",
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Total pesanan: " +
                                              snapshot.data[index]['total'],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                      ),
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
