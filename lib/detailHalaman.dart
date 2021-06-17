import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailHalaman extends StatefulWidget {
  List list;
  int index;
  detailHalaman({required this.list, required this.index});

  @override
  _detailHalamanState createState() => _detailHalamanState();
}

class _detailHalamanState extends State<detailHalaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.list[widget.index]['nama']),
      ),
      body: new ListView(
        children: [
          new Card(
              child: new Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Icon(Icons.store),
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Text(widget.list[widget.index]['toko']),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: AspectRatio(
                          aspectRatio: 0.78,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: new Image.network(
                                widget.list[widget.index]['gambar']),
                          ),
                        )),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          widget.list[widget.index]['nama'],
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          maxLines: 2,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 260,
                                  child: Text.rich(TextSpan(
                                      text: widget.list[widget.index]
                                          ['variasi'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black54,
                                      ))),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text.rich(TextSpan(
                                    text: "x" +
                                        widget.list[widget.index]['t_pesan'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black54,
                                    ))),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Container(
                              margin: EdgeInsets.only(left: 200),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text.rich(TextSpan(
                                  text:
                                      "Rp" + widget.list[widget.index]['harga'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                )),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("Subtotal Produk"),
                            padding: EdgeInsets.only(top: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            width: 255,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['harga'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("Subtotal Pengiriman"),
                            padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 213.4,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['ongkir'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("Subtotal Diskon"),
                            padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 213.4,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['diskon'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("Total Pesanan"),
                            padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 213.4,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['total'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                IntrinsicHeight(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [

                          Text(
                            "Metode Pembayaran"
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Total pesanan: " +
                                widget.list[widget.index]['metode'],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("No Pesanan"),
                            padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 213.4,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['total'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            child: Text("Status Transaksi"),
                            padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 213.4,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text.rich(TextSpan(
                                text: "Rp" + widget.list[widget.index]['total'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              )),
                            ))
                      ],
                    )
                  ],
                ),

              ],
            ),
          )),
        ],
      ),
    );
  }
}
