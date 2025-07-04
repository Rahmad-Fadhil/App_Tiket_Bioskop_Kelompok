import 'package:flutter/material.dart';

class tiketPesanan extends StatefulWidget {
  final String gambar;
  final String judul;
  final String genre;
  final String deskripsi;

  const tiketPesanan({
    super.key,
    required this.gambar,
    required this.judul,
    required this.deskripsi,
    required this.genre,
  });

  @override
  State<tiketPesanan> createState() => _tiketPesananState();
}

class _tiketPesananState extends State<tiketPesanan> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.network(
                widget.gambar
              ),
              Text(widget.judul),
              Text(widget.deskripsi),
              TextButton(
                onPressed: () {}, child: Text("Pesan Tiket")
              )
            ],
          ),
        ]
      ),
    );
  }
}