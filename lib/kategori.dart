import 'package:flutter/material.dart';

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
                          child: Text("Belanja"),
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
                          width: 100,
                          child: Text("Topup Tagihan"),
                        ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
