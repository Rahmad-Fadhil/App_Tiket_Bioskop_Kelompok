import 'dart:ffi';

import 'package:flutter/material.dart';

class Tiketpurchase extends StatefulWidget {
  final String judul;
  final String genre;
  final String tempat;
  final String tanggal;
  final String waktu;


  const Tiketpurchase({
    super.key,
    required this.judul,
    required this.genre,
    required this.tempat,
    required this.tanggal,
    required this.waktu
  });

  @override
  State<Tiketpurchase> createState() => _TiketpurchaseState();
}

class _TiketpurchaseState extends State<Tiketpurchase> {
  late List<Map<String, String>> dataTiket;
  @override
  
  Void initState() {
    super.initState();
    dataTiket = [
      {"label": "Judul Film", "value": widget.judul},
      {"label": "Genre", "value": widget.genre},
      {"label": "Tempat", "value": widget.tempat},
      {"label": "Tanggal", "value": widget.tanggal},
      {"label": "Waktu", "value": widget.waktu},
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiket Purchase"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dataTiket.length,
      ),
    );
  }
}